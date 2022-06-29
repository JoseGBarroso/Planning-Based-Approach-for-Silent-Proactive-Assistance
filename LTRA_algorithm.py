
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
#		-> Types: actionCounter - object
#		-> Objetos y constantes: A0, A1, A2, A3 ... AEND - actionCounter
#		-> Predicados: prime_turn, supporter_turn, prime_follows_original_plan, current_action, NEXT_ACTION, prime_may_not_follow_original_plan
#		-> Acciones: sup_noop y pri_FA_noop

import sys, copy, os



def readParameters(): 
		try: 
			omega = float(sys.argv[5])
			if omega < 1: 
				1/0
			if len(sys.argv) == 6: 
				return sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], omega
			1/0
		except: 
			printHelpingMenu()
			return -1, -1, -1, -1, -1



def printHelpingMenu(): 
	x ='''
	How to execute this program? 
		python3 assistanceThroughTwoPhases-V2_algorithm.py <prime_domain> <prime_problem> <supporter_domain> <supporter_problem> <omega>
			<omega> is a number >=1
	WARNING: <supporter_problem> should have no goals and no metric. 
	WARNING: The no-operation action must not be included in the domain definitions. It is included when the LTRA domain is generated.
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
	actions_to_instance = {} 
	
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
	action_to_instance = [0, [], [], []]
	action_to_create_domain = [0, [], [], [], []]
	action_name = ""
	parameter_number = 1
	dictionary_parameters = {}
	parameters = ""
	predicate = ""
	predicate_to_instance = []
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

		elif reading_functions == 1: # Tiene que estar el total-cost, y solo el total-cost
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
					parameter_number = 1
				else: 
					word = cleanParenthesis(word)
					if word != "" and word != ":parameters": 
						parameters = parameters + word + " "
						if word[0] == "?": 
							dictionary_parameters[word] = parameter_number
							parameter_number += 1
			elif reading_part_action == 2: 
				if len(word) > 1 and word[-2] == ")": 
					word = word[:-1]
				if word == "(and" or word == "(and)" or word =="()": 
					continue
				elif word == ":effect": 
					reading_part_action = 3
				elif (predicate) == "": 
					predicate_to_instance.append(cleanParenthesis(word))
					predicate = word
				else: 
					predicate = predicate + " " + word
					cleaned_word = cleanParenthesis(word)
					if word[0] == "?": 
						predicate_to_instance.append(dictionary_parameters[cleaned_word])
					else: 
						predicate_to_instance.append(cleaned_word)
				if word[-1] == ")": 
					action_to_instance[1].append(predicate_to_instance)
					action_to_create_domain[2].append(predicate)
					predicate_to_instance = []
					predicate = ""

			elif reading_part_action == 3: 
				while len(word) > 1 and word[-2] == ")": 
					word = word[:-1]
				if word == "(and" or word == "(increase": 
					continue
				elif word == "(:action": 
					reading_part_action = 0
					dictionary_parameters = {}
					actions_to_instance[action_name] = action_to_instance
					action_to_instance = [0, [], [], []]
					actions_to_create_domain[action_name] = action_to_create_domain
					action_to_create_domain = [0, [], [], [], []]
					continue
				elif word == "(total-cost)": 
					next_is_cost = True
					continue
				elif next_is_cost: 
					cost = float(cleanParenthesis(word))
					action_to_create_domain[0] = cost
					action_to_instance[0] = cost
					next_is_cost = False 
					continue
				elif word == "(not": 
					is_del_predicate = 1
					predicate = word 
					continue
				elif word[0] == "(": 
					predicate_to_instance.append(cleanParenthesis(word))
					if predicate == "": 
						predicate = word
					else: 
						predicate = predicate + " " + word 
				else: 
					predicate = predicate + " " + word
					cleaned_word = cleanParenthesis(word)
					if word[0] == "?": 
						predicate_to_instance.append(dictionary_parameters[cleaned_word])
					else: 
						predicate_to_instance.append(cleaned_word)
				if word[-1] == ")": 
					if is_del_predicate == 1: 
						predicate = predicate + ")"
					action_to_instance[2+is_del_predicate].append(predicate_to_instance)
					predicate_to_instance = []
					action_to_create_domain[3+is_del_predicate].append(predicate)
					predicate = ""
					is_del_predicate = 0

			
	dictionary_parameters = {}
	actions_to_instance[action_name] = action_to_instance
	action_to_instance = [0, [], [], []]
	actions_to_create_domain[action_name] = action_to_create_domain
	action_to_create_domain = [0, [], [], [], []]
	
	return requirements, types, constants, predicates, functions, actions_to_create_domain, actions_to_instance



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



def getSupActionsThatCanChangePrimeBasePlan(prime_act, sup_act):
	list_of_actions = []
	list_of_prime_prec = []
	for action in prime_act: 
		for prec in prime_act[action][1]: 
			if prec[0] not in list_of_prime_prec: 
				list_of_prime_prec.append(prec[0])
	for action in sup_act: 
		check_eff = True
		for eff in sup_act[action][2]: 
			if eff[0] in list_of_prime_prec: 
				list_of_actions.append(action)
				check_eff = False
				break
		if check_eff: 
			for eff in sup_act[action][3]: 
				if eff[0] in list_of_prime_prec: 
					list_of_actions.append(action)
					break
	return list_of_actions



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
	


def solve(domain, problem): 
	plan = [] 
	os.system('python3.7 fast-downward.py --log-level warning --overall-time-limit 1800 --overall-memory-limit 8G ' + domain + ' ' + problem + ' --search "astar(ipdb())"')
	if not os.path.isfile("sas_plan"):
		return -1
	file_plan = open("sas_plan") 
	for action in file_plan: 
		if action[0] == ";": 
			break 
		action = action[1:-2] 
		action = action.split() 
		plan.append(action) 
	file_plan.close()
	os.remove("sas_plan")
	return plan 



def instantiateActions(actions, plan): 
	instantiated_plan = {}
	ordered_plan = []
	new_constants = []
	counter = 0
	for action in plan: 
		ordered_plan.append(str(counter) + "_" + action[0])
		instantiated_action = copy.deepcopy(actions[action[0]])
		for i in range(1, 4): 
			for index in range(len(instantiated_action[i])): 
				for index_parameter in range(1, len(instantiated_action[i][index])): 
					if (type((instantiated_action[i][index][index_parameter])) is int): 
						instantiated_action[i][index][index_parameter] = action[instantiated_action[i][index][index_parameter]]
						if instantiated_action[i][index][index_parameter] not in new_constants: 
							new_constants.append(instantiated_action[i][index][index_parameter])
		instantiated_plan[str(counter) + "_" + action[0]] = instantiated_action
		counter += 1
	return instantiated_plan, ordered_plan, new_constants



def createProblem(prime_objects, sup_objects, new_constants, prime_init, sup_init, prime_goals, plan_length, prime_problem, prime_domain): 
	new_constants_with_its_type = {}
		
	new_problem_name = prime_problem.split("/")
	new_problem_name = "LTRA_" + new_problem_name[-1][:-5]
	new_problem_name = new_problem_name.replace("_prime","")
	new_problem_name = new_problem_name.replace("prime_","")
	new_domain_name = prime_domain.split("/")
	new_domain_name = "LTRA_" + new_domain_name[-1][:-5]
	new_domain_name = new_domain_name.replace("_prime","")
	new_domain_name = new_domain_name.replace("prime_","")

	LTRA_problem = open(new_problem_name + ".pddl", "w")
	LTRA_problem.write("(define (problem " + new_problem_name + ")\n")
	LTRA_problem.write("(:domain " + new_domain_name + ")\n")
	
	LTRA_problem.write("(:objects\n")
	objects = {} 	
	for typ in sup_objects: 
		aux = [] 
		aux2 = [] 
		for obj in sup_objects[typ]: 
			if obj not in new_constants: 
				aux.append(obj)
			else: 
				aux2.append(obj)
		if aux != []: 
			objects[typ] = aux 
		if aux2 != []: 
			new_constants_with_its_type[typ] = aux2
			
	for typ in prime_objects: 
		if typ in objects: 
			for obj in prime_objects[typ]: 
				if obj in objects[typ]: 
					continue
				if obj not in new_constants: 
					objects[typ].append(obj)
				else: 
					if typ in new_constants_with_its_type: 
						if obj not in new_constants_with_its_type[typ]: 
							new_constants_with_its_type[typ].append(obj)
					else: 
						new_constants_with_its_type[typ] = [obj]
		else: 
			aux = []
			for obj in prime_objects[typ]: 
				if obj not in new_constants: 
					aux.append(obj)
				else: 
					if typ in new_constants_with_its_type: 
						if obj not in new_constants_with_its_type[typ]: 
							new_constants_with_its_type[typ].append(obj)
					else: 
						new_constants_with_its_type[typ] = [obj]
			if aux != []: 
				objects[typ] = aux 
	
	for typ in objects: 
		LTRA_problem.write("    ")
		for obj in objects[typ]: 
			LTRA_problem.write(obj + " ")
		LTRA_problem.write("- " + typ + "\n")
	LTRA_problem.write(")\n")
	LTRA_problem.write("\n")
	
	LTRA_problem.write("(:init\n")
	LTRA_problem.write("    (= (total-cost) 0)\n")
	LTRA_problem.write("    (supporter_turn)\n")
	LTRA_problem.write("    (prime_follows_original_plan)\n")
	if plan_length != 0: 
		LTRA_problem.write("    (current_action A0)\n")
		for i in range(1, plan_length): 
			LTRA_problem.write("    (NEXT_ACTION A" + str(i-1) + " A" + str(i) +  ")\n")
		LTRA_problem.write("    (NEXT_ACTION A" + str(plan_length - 1) + " AEND)\n")
	for pred in sup_init: 
		LTRA_problem.write("    " + pred + "\n")
	for pred in prime_init: 
		if pred not in sup_init: 
			LTRA_problem.write("    " + pred + "\n")
	LTRA_problem.write(")\n")
	LTRA_problem.write("\n")
	
	LTRA_problem.write("(:goal\n")
	LTRA_problem.write("  (and\n")
	for pred in prime_goals: 
		LTRA_problem.write("    " + pred + "\n")
	LTRA_problem.write("  )\n")
	LTRA_problem.write(")\n")
	
	LTRA_problem.write("(:metric minimize (total-cost))\n")
	LTRA_problem.write(")\n")
	LTRA_problem.close()
	return new_problem_name, new_domain_name, new_constants_with_its_type



def createDomain(sup_req, prime_req, sup_typ, prime_typ, sup_const, prime_const, new_constants_with_its_type, sup_pred, prime_pred, sup_func, prime_func, sup_act, prime_act, instantiated_sup_plan, ordered_plan, LTRA_domain_name, omega, sup_actions_that_can_change_prime_base_plan): 
	LTRA_domain = open(LTRA_domain_name + ".pddl", "w")
	LTRA_domain.write("(define (domain " + LTRA_domain_name + ")\n")
		
	LTRA_domain.write("(:requirements")
	for req in sup_req: 
		LTRA_domain.write(" " + req)
	for req in prime_req: 
		if req not in sup_req: 
			LTRA_domain.write(" " + req)
	LTRA_domain.write(")\n")
	LTRA_domain.write("\n") 
	
	types = sup_typ
	for typ in prime_typ: 
		if typ in types: 
			for element in prime_typ[typ]: 
				if element not in types[typ]:
					types[typ].append(element)
		else: 
			types[typ] = prime_typ[typ]
	if len(ordered_plan) != 0: 
		if types == {}: 
			types["object"]= ["actionCounter"]
		else:
			types["object"].append("actionCounter")
	LTRA_domain.write("(:types\n") 
	for typ in types: 
		LTRA_domain.write("    ")
		for element in types[typ]: 
			LTRA_domain.write(element + " ")
		LTRA_domain.write("- " + typ + "\n")
	LTRA_domain.write(")\n")
	LTRA_domain.write("\n") 
		
	constants = sup_const
	for typ in prime_const: 
		if typ in constants: 
			for const in prime_const[typ]: 
				if const not in constants[typ]:
					constants[typ].append(const)
		else: 
			constants[typ] = prime_const[typ]
	for typ in new_constants_with_its_type: 
		if typ in constants: 
			for const in new_constants_with_its_type[typ]: 
				if const not in constants[typ]:
					constants[typ].append(const)
		else: 
			constants[typ] = new_constants_with_its_type[typ]

	LTRA_domain.write("(:constants\n")
	if len(ordered_plan) != 0: 
		LTRA_domain.write("    ")
		for i in range(len(ordered_plan)): 
			LTRA_domain.write("A" + str(i) + " ")
		LTRA_domain.write("AEND - actionCounter\n")
	for typ in constants: 
		LTRA_domain.write("    ")
		for const in constants[typ]: 
			LTRA_domain.write(const + " ")
		LTRA_domain.write("- " + typ + "\n")
	LTRA_domain.write(")\n")
	LTRA_domain.write("\n") 
		
	
	LTRA_domain.write("(:predicates\n") 
	LTRA_domain.write("    (prime_turn)\n") 
	LTRA_domain.write("    (supporter_turn)\n") 
	LTRA_domain.write("    (prime_follows_original_plan)\n") 
	LTRA_domain.write("    (prime_may_not_follow_original_plan)\n") 
	if len(ordered_plan) != 0: 
		LTRA_domain.write("    (current_action ?x - actionCounter)\n") 
		LTRA_domain.write("    (NEXT_ACTION ?x - actionCounter ?y - actionCounter)\n") 
	for pred in sup_pred: 
		LTRA_domain.write("    " + sup_pred[pred] + "\n")
	for pred in prime_pred: 
		if pred not in sup_pred: 
			LTRA_domain.write("    " + prime_pred[pred] + "\n")
	LTRA_domain.write(")\n")
	LTRA_domain.write("\n") 
	
	LTRA_domain.write("(:functions\n") #No hay por el momento mas funciones
	LTRA_domain.write("    (total-cost) - number\n") 
	LTRA_domain.write(")\n") 
	LTRA_domain.write("\n") 
	
	
	for action_name in sup_act: 
		LTRA_domain.write("(:action sup_" + action_name + "\n") 
		LTRA_domain.write("    :parameters " + sup_act[action_name][1] + "\n") 
		LTRA_domain.write("    :precondition (and\n") 
		LTRA_domain.write("        (supporter_turn)\n") 
		for precondition in sup_act[action_name][2]: 
			LTRA_domain.write("        " + precondition + "\n") 
		LTRA_domain.write("    )\n") 
		LTRA_domain.write("    :effect (and\n") 
		LTRA_domain.write("        (prime_turn)\n") 
		LTRA_domain.write("        (not (supporter_turn))\n") 
		if action_name in sup_actions_that_can_change_prime_base_plan: 
			LTRA_domain.write("        (prime_may_not_follow_original_plan)\n") 
		for effect in sup_act[action_name][3]: 
			LTRA_domain.write("        " + effect + "\n") 
		for effect in sup_act[action_name][4]: 
			LTRA_domain.write("        " + effect + "\n") 
		LTRA_domain.write("        (increase (total-cost) " + str(sup_act[action_name][0]) + ")\n") 
		LTRA_domain.write("    )\n") 
		LTRA_domain.write(")\n") 
		LTRA_domain.write("\n") 
	
	for action_name in prime_act: 
		LTRA_domain.write("(:action pri_" + action_name + "\n") 
		LTRA_domain.write("    :parameters " + prime_act[action_name][1] + "\n") 
		LTRA_domain.write("    :precondition (and\n") 
		LTRA_domain.write("        (prime_turn)\n") 
		LTRA_domain.write("        (prime_may_not_follow_original_plan)\n") 
		for precondition in prime_act[action_name][2]: 
			LTRA_domain.write("        " + precondition + "\n") 
		LTRA_domain.write("    )\n") 
		LTRA_domain.write("    :effect (and\n")  
		LTRA_domain.write("        (not (prime_follows_original_plan))\n") 
		for effect in prime_act[action_name][3]: 
			LTRA_domain.write("        " + effect + "\n") 
		for effect in prime_act[action_name][4]: 
			LTRA_domain.write("        " + effect + "\n") 
		LTRA_domain.write("        (increase (total-cost) " + str(prime_act[action_name][0] * omega) + ")\n")  
		LTRA_domain.write("    )\n") 
		LTRA_domain.write(")\n") 
		LTRA_domain.write("\n") 
	
	if len(ordered_plan) == 0: 
		LTRA_domain.write("(:action pri_FA_noop\n") 
		LTRA_domain.write("    :parameters ()\n") 
		LTRA_domain.write("    :precondition (and\n") 
		LTRA_domain.write("        (prime_turn)\n") 
		LTRA_domain.write("        (prime_follows_original_plan)\n") 
		LTRA_domain.write("    )\n") 
		LTRA_domain.write("    :effect (and\n") 
		LTRA_domain.write("        (supporter_turn)\n") 
		LTRA_domain.write("        (not (prime_turn))\n") 
		LTRA_domain.write("        (increase (total-cost) 0)\n") 
		LTRA_domain.write("    )\n") 
		LTRA_domain.write(")\n") 
		LTRA_domain.write("\n") 
		
	else: 
		counter = 0
		for action_name in ordered_plan: 
			LTRA_domain.write("(:action pri_FA_" + action_name + "\n") 
			LTRA_domain.write("    :parameters () \n") 
			LTRA_domain.write("    :precondition (and\n") 
			LTRA_domain.write("        (prime_turn)\n") 
			LTRA_domain.write("        (prime_follows_original_plan)\n") 
			LTRA_domain.write("        (current_action A" + str(counter) + ")\n") 
			if counter < len(ordered_plan) - 1:
				LTRA_domain.write("        (NEXT_ACTION A" + str(counter) + " A" + str(counter + 1) + ")\n") 
			else: 
				LTRA_domain.write("        (NEXT_ACTION A" + str(counter) + " AEND)\n") 
			for precondition in instantiated_sup_plan[action_name][1]: 
				predicate = precondition[0]
				for index in range(1, len(precondition)): 
					predicate = predicate + " " + precondition[index]
				LTRA_domain.write("        (" + predicate + ")\n") 
			LTRA_domain.write("    )\n") 
			LTRA_domain.write("    :effect (and\n")
			LTRA_domain.write("        (supporter_turn)\n") 
			if counter < len(ordered_plan) - 1:
				LTRA_domain.write("        (current_action A" + str(counter + 1) + ")\n") 
			else: 
				LTRA_domain.write("        (current_action AEND)\n")
			for effect in instantiated_sup_plan[action_name][2]: 
				predicate = effect[0]
				for index in range(1, len(effect)): 
					predicate = predicate + " " + effect[index]
				LTRA_domain.write("        (" + predicate + ")\n") 
			LTRA_domain.write("        (not (prime_turn))\n") 
			LTRA_domain.write("        (not (current_action A" + str(counter) + "))\n")
			for effect in instantiated_sup_plan[action_name][3]: 
				predicate = effect[0]
				for index in range(1, len(effect)): 
					predicate = predicate + " " + effect[index]
				LTRA_domain.write("        (not (" + predicate + "))\n") 
			LTRA_domain.write("        (increase (total-cost) " + str(instantiated_sup_plan[action_name][0] * omega) + ")\n")
			LTRA_domain.write("    )\n") 
			LTRA_domain.write(")\n") 
			LTRA_domain.write("\n") 
			counter += 1
	

	LTRA_domain.write("(:action sup_noop\n") 
	LTRA_domain.write("    :parameters ()\n") 
	LTRA_domain.write("    :precondition (and\n") 
	LTRA_domain.write("        (supporter_turn)\n") 
	LTRA_domain.write("    )\n") 
	LTRA_domain.write("    :effect (and\n") 
	LTRA_domain.write("        (prime_turn)\n") 
	LTRA_domain.write("        (not (supporter_turn))\n") 
	LTRA_domain.write("        (increase (total-cost) 0)\n") 
	LTRA_domain.write("    )\n") 
	LTRA_domain.write(")\n") 
	LTRA_domain.write("\n") 

	
	LTRA_domain.write(")\n") 
	LTRA_domain.close()
	


def solveLTRAProblem(LTRA_domain, LTRA_problem): 	
	os.system('python3.7 fast-downward.py --log-level warning --overall-time-limit 1800 --overall-memory-limit 8G ' + LTRA_domain + '.pddl ' + LTRA_problem + '.pddl --search "astar(ipdb())"')
	if not os.path.isfile("sas_plan"):
		return -1
	plan_name = "plan_" + LTRA_problem
	os.rename("sas_plan", plan_name) 
	return plan_name



def getAssistance(LTRA_plan, omega, actions_FA): 
	prime_cost = 0
	supporter_cost = 0
	buffer = ""
	in_first_phase = True
	file_plan = open(LTRA_plan) 
	assistance_plan = open("assistance_" + LTRA_plan, "w") 
	
	for action in file_plan: 
		action = action[:-1]
		if action[0] == ";":
			cost = action.split()
			cost = float(cost[3])
			supporter_cost = cost % omega
			prime_cost = cost // omega
			assistance_plan.write("; Prime cost: " + str(prime_cost) + " Supporter cost: " + str(supporter_cost))
			break
		elif in_first_phase: 
			if action[1:5] == "pri_": 
				if len(action) > 9  and action[1:8] == "pri_fa_": 
					if action == "(pri_fa_noop )": 
						buffer = buffer + "(pri_noop)\n"
					else: 
						action_aux = actions_FA.pop(0)
						action_aux2 = "(pri_" + action_aux[0]
						for i in range(1, len(action_aux)): 
							action_aux2 = action_aux2 + " " + action_aux[i]
						action_aux2 = action_aux2 + ")"
						buffer = buffer + action_aux2 + "\n"
				else: 
					in_first_phase = False
			elif action[1:5] == "sup_": 
				buffer = buffer + action + "\n"
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
	
	prime_domain, prime_problem, sup_domain, sup_problem, omega= readParameters()
	if prime_domain == -1: 
		return -1
	
	prime_req, prime_typ, prime_const, prime_pred, prime_func, prime_act, prime_act_to_instance = readDomain(prime_domain) 
	sup_req, sup_typ, sup_const, sup_pred, sup_func, sup_act, sup_act_to_instance = readDomain(sup_domain) 
	sup_actions_that_can_change_prime_base_plan = getSupActionsThatCanChangePrimeBasePlan(prime_act_to_instance, sup_act_to_instance)
	
	prime_objects, prime_init, prime_init_totalCost, prime_goals = readProblem(prime_problem) 
	sup_objects, sup_init, sup_init_totalCost, sup_goals = readProblem(sup_problem) #No tiene goals
		
	instantiated_sup_plan = {}
	ordered_plan = []
	new_constants = []
	prime_plan = solve(prime_domain, prime_problem) 
	if prime_plan == -1: 
		print("prime problem cannot be solved.")
	else: 
		instantiated_sup_plan, ordered_plan, new_constants = instantiateActions(prime_act_to_instance, prime_plan) 
	
	LTRA_problem, LTRA_domain, new_constants_with_its_type = createProblem(prime_objects, sup_objects, new_constants, prime_init, sup_init, prime_goals, len(ordered_plan), prime_problem, prime_domain) 
	createDomain(sup_req, prime_req, sup_typ, prime_typ, sup_const, prime_const, new_constants_with_its_type, sup_pred, prime_pred, sup_func, prime_func, sup_act, prime_act, instantiated_sup_plan, ordered_plan, LTRA_domain, omega, sup_actions_that_can_change_prime_base_plan) 
	
	LTRA_plan = solveLTRAProblem(LTRA_domain, LTRA_problem) 
	if LTRA_plan == -1: 
		getNoopAssistance("plan_" + LTRA_problem)
		print("LTRA problem cannot be solved.")
		return -1
	prime_cost, supporter_cost = getAssistance(LTRA_plan, omega, prime_plan) 
	
	return 0  
	
	
	
main() 


