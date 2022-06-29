
# Restricciones: 
#	-> El parser tiene limitaciones. Por ejemplo, el dominio tiene que seguir una estructura clara: primero requirementes (si los hay), luego tipos (si los hay), constantes (si las hay), predicados, la función total-cost y, por último, las acciones. 
#	-> En caso de haber types, la jerarquía debe estar dominada por el tipo object, que no tiene que ser declarado independientemente, pero sí junto aquellos que son hijos en el árbol que forma dicha jerarquía y tras "-". 
#		-> Ejemplo: (:types type1 type2 - object
#							type3 - type1)
#	-> En cualquier objeto y constante, en caso de haber, debe indicarse a qué tipo pertenece (aunque sea al tipo object). 
#	-> Cuando se indica el tipo al que pertenece un type, constant u object se escribe "-" de manera espaciada. Ejemplo correcto: (:constants const - typeA). Ejemplos incorrectos: (:constants const -typeA); (:constants const- typeA)
#	-> Por ahora solo está la funcion total-cost. Y tiene que estar sí o sí en ambos dominios, e inicializada a 0. Los increase solo pueden ser valores >= 0. Aquellas acciones que no tengan increase del total-cost tiene un coste igual a 0. 
#	-> No hay precondiciones negadas. 
#	-> No hay when, forall y cosas de esas. Solo precondiciones, anhadidos, borrados. 
#	-> La metrica deber ser reducir total-cost siempre. 
#	-> Si dos predicados, tipos u objetos se llaman igual en el dominio o problema prime y en el supporter, se considerará que es el mismo predicado, tipo u objeto. Además, si un predicado es compartido por ambos agentes, todas sus instancias también serán comunes. 
#	-> Hay nombres de predicados tipos y objetos que se están declarando aquí. Los dominios y problemas introducidos en los parámetros al ejecutar este algoritmo no deben llamarse de la misma forma. 
#		-> Predicados: prime_turn y supporter_turn
#		-> Acciones: sup_noop y pri_noop

import sys, os



def readParameters(): 
		try: 
			omega = float(sys.argv[5])
			if omega < 1: 
				1/0
			if len(sys.argv) == 6: 
				return sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], omega, -1
			if len(sys.argv) == 7: 
				psi = float(sys.argv[6])
				if psi <= 0: 
					1/0
				return sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], omega, psi
			1/0
		except: 
			printHelpingMenu()
			return -1, -1, -1, -1, -1, -1
			


def printHelpingMenu(): 
	x ='''
	How to execute this program? 
		python3 jointDomain_algorithm.py <prime_domain> <prime_problem> <supporter_domain> <supporter_problem> <omega> (<psi>)
			<omega> is a number >=1
			<psi> is a number >0 used to penalize Prime's noop
	WARNING: <supporter_problem> should have no goals and no metric. 
	WARNING: The no-operation action must not be included in the domain definitions. It is included when the joint domain is generated.
	WARNING: If a predicate is shared by both agents, all its instances are also shared by both agents.
	1. It's recommended that <prime_domain> and <prime_problem> contain the word "_prime" or "prime_" in their names.
	2. fast-downward.py must be in the same directory as this program.
	3. fast-downward parameters: --overall-time-limit 1800 --overall-memory-limit 8G --search "astar(ipdb())"
    '''
	print(x)



def readDomain(domain): 
	requirements = [] 
	types = {} 
	constants = {} 
	predicates = {}
	functions = [] 
	actions_to_create_domain = {} 
	
	reading_requirements = 1
	reading_types = 0
	reading_constants = 0
	reading_predicates = 0
	reading_functions = 0
	reading_actions = 0
	
	
	next_word_is_type = 0
	types_aux = []
	constants_aux = []
	predicate_name = ""
	predicate_aux = ""
	
	
	reading_part_action = 0 #0 action_name, 1 parameters, 2 preconditions, 3 effects
	action_to_create_domain = [0, [], [], [], []]
	action_name = ""
	parameters = ""
	predicate = ""
	is_del_predicate = 0
	next_is_cost = False
	
	
	complete_file = getCompleteFile(domain)
	
	for word in complete_file: 
		word = word.lower()

		if reading_requirements == 1: 
			if word == "(:types": 
				reading_requirements = 0
				reading_types = 1
			elif word == "(:constants": 
				reading_requirements = 0
				reading_constants = 1
			elif word == "(:predicates": 
				reading_requirements = 0
				reading_predicates = 1
			elif word[0] == ":" : 
				if word[-1] == ")": 
					word = word[:-1]
				requirements.append(word)

		elif reading_types == 1: 
			if word == "(:constants": 
				reading_types = 0
				reading_constants = 1
			elif word == "(:predicates": 
				reading_types = 0
				reading_predicates = 1
			elif next_word_is_type == 1: 
				if word[-1] == ")": 
					word = word[:-1]
				if word not in types: 
					types[word] = types_aux
				else: 
					for element in types_aux: 
						types[word].append(element)
				next_word_is_type = 0
				types_aux = []
			else: 
				if word == "-": 
					next_word_is_type = 1
				else: 
					types_aux.append(word)

		elif reading_constants == 1: 
			if word == "(:predicates": 
				reading_constants = 0
				reading_predicates = 1
			elif next_word_is_type == 1: 
				if word[-1] == ")": 
					word = word[:-1]
				if word not in constants: 
					constants[word] = constants_aux
				else: 
					for constant in constants_aux: 
						constants[word].append(constant)
				next_word_is_type = 0
				constants_aux = []
			else: 
				if word == "-": 
					next_word_is_type = 1
				else: 
					constants_aux.append(word)

		elif reading_predicates == 1: 
			if word == "(:functions": 
				reading_predicates = 0
				reading_functions = 1
			if word[-1] == ")": 
				if predicate_name == "":  
					predicates[cleanParenthesis(word)] = "(" + cleanParenthesis(word) + ")" 
				else:  
					predicates[predicate_name] = "(" + predicate_aux + " " + cleanParenthesis(word) + ")"
					predicate_aux = ""
					predicate_name = "" 
			else: 
				if word[0] == "(": 
					word = word[1:]
					predicate_name = word
				predicate_aux = predicate_aux + word + " "

		elif reading_functions == 1: # Tiene que estar el total_cost, y solo el total-cost
			if word == "(:action": 
				reading_functions = 0
				reading_actions = 1

		elif reading_actions == 1: 
			if reading_part_action == 0: 
				action_name = word
				reading_part_action = 1
			elif reading_part_action == 1: 
				if word == ":precondition": 
					reading_part_action = 2
					if parameters != "": 
						parameters = parameters[:-1]
					action_to_create_domain[1] = "(" + parameters + ")" 
					parameters = ""
				else: 
					word = cleanParenthesis(word)
					if word != "" and word != ":parameters": 
						parameters = parameters + word + " "
			elif reading_part_action == 2: 
				if len(word) > 1 and word[-2] == ")": 
					word = word[:-1]
				if word == "(and" or word == "(and)" or word =="()": 
					continue
				elif word == ":effect": 
					reading_part_action = 3
				elif (predicate) == "": 
					predicate = word 
				else: 
					predicate = predicate + " " + word
				if word[-1] == ")": 
					action_to_create_domain[2].append(predicate)
					predicate = ""

			elif reading_part_action == 3: 
				while len(word) > 1 and word[-2] == ")": 
					word = word[:-1]
				if word == "(and" or word == "(increase": 
					continue
				elif word == "(:action": 
					reading_part_action = 0
					actions_to_create_domain[action_name] = action_to_create_domain
					action_to_create_domain = [0, [], [], [], []]
					continue
				elif word == "(total-cost)": 
					next_is_cost = True
					continue
				elif next_is_cost: 
					cost = float(cleanParenthesis(word))
					action_to_create_domain[0] = cost
					next_is_cost = False 
					continue
				elif word == "(not": 
					is_del_predicate = 1
					predicate = word 
					continue
				elif word[0] == "(": 
					if predicate == "": 
						predicate = word
					else: 
						predicate = predicate + " " + word 
				else: 
					predicate = predicate + " " + word
				if word[-1] == ")": 
					if is_del_predicate == 1: 
						predicate = predicate + ")"
					action_to_create_domain[3+is_del_predicate].append(predicate)
					predicate = ""
					is_del_predicate = 0

	
	actions_to_create_domain[action_name] = action_to_create_domain
	action_to_create_domain = [0, [], [], [], []]
	
	return requirements, types, constants, predicates, functions, actions_to_create_domain



def getCompleteFile(filename): 
	complete_file = ""
	file = open(filename)
	for line in file: 
		line = removeComments(line)
		if line == "": 
			continue
		if line[-1] == "\n": 
			line = line[:-1]
		complete_file = complete_file + " " + line
	file.close()
	complete_file = parsingParentheses(complete_file)
	complete_file = complete_file.split()
	return complete_file



def removeComments(line): 
	for index in range(len(line)): 
		if line[index] == ";": 
			return line[:index]
	return line



def parsingParentheses(line): 
	readed_opening_parenthesis = 0
	new_line = ""
	readed_space = 0

	for letter in line: 
		if letter == "(": 
			readed_opening_parenthesis = 1 
			readed_space = 0
			if new_line == "": 
				new_line = "("
			else: 
				new_line = new_line + " ("
				continue
		elif readed_opening_parenthesis == 1 and letter == " ": 
			continue
		elif readed_opening_parenthesis == 1 and letter != " ": 
			readed_opening_parenthesis = 0
			new_line = new_line + letter
			continue
		elif letter == " ": 
			readed_space = 1
			continue
		elif letter == ")": 
			readed_space = 0
			new_line = new_line + ")"
			continue
		elif readed_space == 1: 
			readed_space = 0
			new_line = new_line + " " + letter
		else: 
			if letter == "?": 
				new_line = new_line + " " + letter
			else: 
				new_line = new_line + letter

	return new_line



def cleanParenthesis(word): 
	initial_point = 0
	if word[0] == "(": 
		initial_point = 1
	final_point = len(word)-1
	for i in range(len(word)): 
		if word[final_point] == ")": 
			final_point -= 1
		else: 
			break
	return word[initial_point:final_point+1]



def readProblem(problem): 
	objects = {}
	init = [] 
	init_totalCost = 0
	goals = [] 
		
	complete_file = getCompleteFile(problem)
	
	reading_header = 1
	reading_objects = 0
	reading_init = 0
	reading_goals = 0
	
	next_word_is_type = 0
	objects_aux = []
	next_word_is_totalCost = False
	predicate = ""
		 
	
	for word in complete_file: 
		word = word.lower()

		if reading_header == 1: 
			if word == "(:objects": 
				reading_header = 0
				reading_objects = 1
			if word == "(:init": 
				reading_header = 0
				reading_init = 1

		elif reading_objects == 1: 
			if word == "(:init": 
				reading_objects = 0
				reading_init = 1
			elif next_word_is_type == 1: 
				if word[-1] == ")": 
					word = word[:-1]
				if word not in objects: 
					objects[word] = objects_aux
				else: 
					for element in objects_aux: 
						objects[word].append(element)
				next_word_is_type = 0
				objects_aux = []
			else: 
				if word == "-": 
					next_word_is_type = 1
				else: 
					objects_aux.append(word)

		elif reading_init == 1: 
			while len(word) > 1 and word[-2] == ")": 
				word = word[:-1]
			if word == "(:goal": 
				reading_init = 0
				reading_goals = 1
			elif word == "(=": 
				continue 
			elif word == "(total-cost)": 
				next_word_is_totalCost = True   
			elif next_word_is_totalCost: 
				init_totalCost = int(word[:-1]) #Esto no se está utilizando para nada actualmente. Asumo que es 0. 
				next_word_is_totalCost = False   
			else: 
				if predicate == "": 
					predicate = word 
				else: 
					predicate = predicate + " " + word 	
				if word[-1] == ")": 
					init.append(predicate)
					predicate = ""

		elif reading_goals == 1: 
			if word == "(and": 
				continue 
			elif word == "(:metric": 
				break
			elif predicate == "": 
				predicate = word 
			else: 
				predicate = predicate + " " + word 	
			if word[-1] == ")": 
				predicate = "(" + cleanParenthesis(predicate) + ")"
				if len(predicate) > 4 and predicate[:6] == "(not (": 
					predicate += ")"
				goals.append(predicate)
				predicate = ""
			
	return objects, init, init_totalCost, goals 



def createProblem(prime_objects, sup_objects, prime_init, sup_init, prime_goals, prime_problem, prime_domain): 
	new_problem_name = prime_problem.split("/")
	new_problem_name = "joint_" + new_problem_name[-1][:-5]
	new_problem_name = new_problem_name.replace("_prime","")
	new_problem_name = new_problem_name.replace("prime_","")
	new_domain_name = prime_domain.split("/")
	new_domain_name = "joint_" + new_domain_name[-1][:-5]
	new_domain_name = new_domain_name.replace("_prime","")
	new_domain_name = new_domain_name.replace("prime_","")

	stb_problem = open(new_problem_name + ".pddl", "w")
	stb_problem.write("(define (problem " + new_problem_name + ")\n")
	stb_problem.write("(:domain " + new_domain_name + ")\n")
	
	stb_problem.write("(:objects\n")
	objects = sup_objects 
	for typ in prime_objects: 
		if typ in objects: 
			for obj in prime_objects[typ]: 
				if obj not in objects[typ]: 
					objects[typ].append(obj)
		else: 
			objects[typ] = prime_objects[typ] 
	
	for typ in objects: 
		stb_problem.write("    ")
		for obj in objects[typ]: 
			stb_problem.write(obj + " ")
		stb_problem.write("- " + typ + "\n")
	stb_problem.write(")\n")
	stb_problem.write("\n")
	
	stb_problem.write("(:init\n")
	stb_problem.write("    (= (total-cost) 0)\n")
	stb_problem.write("    (supporter_turn)\n")
	for pred in sup_init: 
		stb_problem.write("    " + pred + "\n")
	for pred in prime_init: 
		if pred not in sup_init: 
			stb_problem.write("    " + pred + "\n")
	stb_problem.write(")\n")
	stb_problem.write("\n")
	
	stb_problem.write("(:goal\n")
	stb_problem.write("  (and\n")
	for pred in prime_goals: 
		stb_problem.write("    " + pred + "\n")
	stb_problem.write("  )\n")
	stb_problem.write(")\n")
	
	stb_problem.write("(:metric minimize (total-cost))\n")
	stb_problem.write(")\n")
	stb_problem.close()
	return new_problem_name, new_domain_name



def createDomain(sup_req, prime_req, sup_typ, prime_typ, sup_const, prime_const, sup_pred, prime_pred, sup_func, prime_func, sup_act, prime_act, joint_domain_name, omega, psi): 
	joint_domain = open(joint_domain_name + ".pddl", "w")
	joint_domain.write("(define (domain " + joint_domain_name + ")\n")
		
	joint_domain.write("(:requirements")
	for req in sup_req: 
		joint_domain.write(" " + req)
	for req in prime_req: 
		if req not in sup_req: 
			joint_domain.write(" " + req)
	joint_domain.write(")\n")
	joint_domain.write("\n") 
	
	types = sup_typ
	for typ in prime_typ: 
		if typ in types: 
			for element in prime_typ[typ]: 
				if element not in types[typ]:
					types[typ].append(element)
		else: 
			types[typ] = prime_typ[typ]
	joint_domain.write("(:types\n") 
	for typ in types: 
		joint_domain.write("    ")
		for element in types[typ]: 
			joint_domain.write(element + " ")
		joint_domain.write("- " + typ + "\n")
	joint_domain.write(")\n")
	joint_domain.write("\n") 
		
	constants = sup_const
	for typ in prime_const: 
		if typ in constants: 
			for const in prime_const[typ]: 
				if const not in constants[typ]:
					constants[typ].append(const)
		else: 
			constants[typ] = prime_const[typ]

	joint_domain.write("(:constants\n")
	for typ in constants: 
		joint_domain.write("    ")
		for const in constants[typ]: 
			joint_domain.write(const + " ")
		joint_domain.write("- " + typ + "\n")
	joint_domain.write(")\n")
	joint_domain.write("\n") 
		
	
	joint_domain.write("(:predicates\n") 
	joint_domain.write("    (prime_turn)\n") 
	joint_domain.write("    (supporter_turn)\n") 
	for pred in sup_pred: 
		joint_domain.write("    " + sup_pred[pred] + "\n")
	for pred in prime_pred: 
		if pred not in sup_pred: 
			joint_domain.write("    " + prime_pred[pred] + "\n")
	joint_domain.write(")\n")
	joint_domain.write("\n") 
	
	joint_domain.write("(:functions\n") #No hay por el momento mas funciones
	joint_domain.write("    (total-cost) - number\n") 
	joint_domain.write(")\n") 
	joint_domain.write("\n") 
	
	
	for action_name in sup_act: 
		joint_domain.write("(:action sup_" + action_name + "\n") 
		joint_domain.write("    :parameters " + sup_act[action_name][1] + "\n") 
		joint_domain.write("    :precondition (and\n") 
		joint_domain.write("        (supporter_turn)\n") 
		for precondition in sup_act[action_name][2]: 
			joint_domain.write("        " + precondition + "\n") 
		joint_domain.write("    )\n") 
		joint_domain.write("    :effect (and\n") 
		joint_domain.write("        (prime_turn)\n") 
		joint_domain.write("        (not (supporter_turn))\n") 
		for effect in sup_act[action_name][3]: 
			joint_domain.write("        " + effect + "\n") 
		for effect in sup_act[action_name][4]: 
			joint_domain.write("        " + effect + "\n") 
		joint_domain.write("        (increase (total-cost) " + str(sup_act[action_name][0]) + ")\n") 
		joint_domain.write("    )\n") 
		joint_domain.write(")\n") 
		joint_domain.write("\n") 
	
	for action_name in prime_act: 
		joint_domain.write("(:action pri_" + action_name + "\n") 
		joint_domain.write("    :parameters " + prime_act[action_name][1] + "\n") 
		joint_domain.write("    :precondition (and\n") 
		joint_domain.write("        (prime_turn)\n") 
		for precondition in prime_act[action_name][2]: 
			joint_domain.write("        " + precondition + "\n") 
		joint_domain.write("    )\n") 
		joint_domain.write("    :effect (and\n")  
		joint_domain.write("        (supporter_turn)\n") 
		joint_domain.write("        (not (prime_turn))\n") 
		for effect in prime_act[action_name][3]: 
			joint_domain.write("        " + effect + "\n") 
		for effect in prime_act[action_name][4]: 
			joint_domain.write("        " + effect + "\n") 
		joint_domain.write("        (increase (total-cost) " + str(prime_act[action_name][0] * omega) + ")\n")  
		joint_domain.write("    )\n") 
		joint_domain.write(")\n") 
		joint_domain.write("\n") 
	

	joint_domain.write("(:action pri_noop\n") 
	joint_domain.write("    :parameters ()\n") 
	joint_domain.write("    :precondition (and\n") 
	joint_domain.write("        (prime_turn)\n") 
	joint_domain.write("    )\n") 
	joint_domain.write("    :effect (and\n") 
	joint_domain.write("        (supporter_turn)\n") 
	joint_domain.write("        (not (prime_turn))\n") 
	if psi == -1: 
		joint_domain.write("        (increase (total-cost) 0)\n") 
	else:
		joint_domain.write("        (increase (total-cost) "+str(psi)+")\n") 
	joint_domain.write("    )\n") 
	joint_domain.write(")\n") 
	joint_domain.write("\n") 
	

	joint_domain.write("(:action sup_noop\n") 
	joint_domain.write("    :parameters ()\n") 
	joint_domain.write("    :precondition (and\n") 
	joint_domain.write("        (supporter_turn)\n") 
	joint_domain.write("    )\n") 
	joint_domain.write("    :effect (and\n") 
	joint_domain.write("        (prime_turn)\n") 
	joint_domain.write("        (not (supporter_turn))\n") 
	joint_domain.write("        (increase (total-cost) 0)\n") 
	joint_domain.write("    )\n") 
	joint_domain.write(")\n") 
	joint_domain.write("\n") 

	
	joint_domain.write(")\n") 
	joint_domain.close()
	


def solveJointProblem(joint_domain, joint_problem): 	
	os.system('python3.7 fast-downward.py --log-level warning --overall-time-limit 1800 --overall-memory-limit 8G ' + joint_domain + '.pddl ' + joint_problem + '.pddl --search "astar(ipdb())"')
	if not os.path.isfile("sas_plan"):
		return -1
	plan_name = "plan_" + joint_problem
	os.rename("sas_plan", plan_name) 
	return plan_name



def getAssistance(joint_plan, omega, psi): 
	prime_cost = 0
	supporter_cost = 0
	buffer = ""
	file_plan = open(joint_plan) 
	assistance_plan = open("assistance_" + joint_plan, "w") 
	
	for action in file_plan: 
		action = action[:-1]
		if action[0] == ";":
			cost = action.split()
			cost = float(cost[3])
			if psi != -1: 
				cost = cost % psi
			supporter_cost = cost % omega
			prime_cost = cost // omega
			assistance_plan.write("; Prime cost: " + str(prime_cost) + " Supporter cost: " + str(supporter_cost))
			break
		else: 
			buffer = buffer + action + "\n"
			if action[1:5] == "sup_": 
				assistance_plan.write(buffer) 
				buffer = ""
		
	file_plan.close()
	assistance_plan.close()
	return prime_cost, supporter_cost



def getNoopAssistance(plan_name): 
	assistance_plan = open("assistance_" + plan_name, "w") 
	assistance_plan.write("(sup_noop )\n")
	assistance_plan.write("; Prime cost: 0 Supporter cost: 0")
	assistance_plan.close()



def main(): 
	
	prime_domain, prime_problem, sup_domain, sup_problem, omega, psi = readParameters()
	if prime_domain == -1: 
		return -1
	
	prime_req, prime_typ, prime_const, prime_pred, prime_func, prime_act = readDomain(prime_domain)
	sup_req, sup_typ, sup_const, sup_pred, sup_func, sup_act = readDomain(sup_domain) 
	
	prime_objects, prime_init, prime_init_totalCost, prime_goals = readProblem(prime_problem) 
	sup_objects, sup_init, sup_init_totalCost, sup_goals = readProblem(sup_problem) #No tiene goals
			
	joint_problem, joint_domain = createProblem(prime_objects, sup_objects, prime_init, sup_init, prime_goals, prime_problem, prime_domain) 
	createDomain(sup_req, prime_req, sup_typ, prime_typ, sup_const, prime_const, sup_pred, prime_pred, sup_func, prime_func, sup_act, prime_act, joint_domain, omega, psi) 
	
	joint_plan = solveJointProblem(joint_domain, joint_problem) 
	if joint_plan == -1: 
		getNoopAssistance("plan_" + joint_problem)
		print("Joint problem cannot be solved.")
		return -1
	prime_cost, supporter_cost = getAssistance(joint_plan, omega, psi) 
	
	return 0  
	
	
	
main() 


