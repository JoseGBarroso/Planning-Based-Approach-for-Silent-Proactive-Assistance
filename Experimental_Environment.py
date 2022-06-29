
import sys, os, copy, time



def readParameters(): 
    try: 
        directory = sys.argv[1]
        k_value = sys.argv[-2]
        if sys.argv[-2] != "infinity": 
            k_value = float(sys.argv[-2])
            if k_value < 1: 
                1/0
        omega = float(sys.argv[-1])
        algorithms = sys.argv[2:-2]
        if len(sys.argv) < 4 or not os.path.isdir(directory) or omega < 1:
            1/0
        for alg in algorithms:
            if not os.path.isfile(alg):
                1/0
        return directory, algorithms, k_value, omega
    except: 
        printHelpingMenu()
        return "", [], -1, -1





def printHelpingMenu(): 
    x ='''
    How to execute this program? 
    	  python3 Experimental_Environment.py <directory_name_with_domains_and_problems> ([<list_of_python3_programs_to_get_assistance>]) <K-value> <omega>
    1. Respect to <directory_name_with_domains_and_problems>:
       1.1. Must only contain one directory per pair of domains.
       1.2. Each directory must only contain two domains (Prime and Supporter) and theirs problems.
       1.3. Domain names: <ID_domain>_domain_<prime_or_assistance>.pddl (for example: car-assistance_domain_supporter.pddl)
       1.4. Problem names: <ID_domain>_problem_<number_problem>_<prime_or_assistance>.pddl (for example: car-assistance_problem_0_prime.pddl)
    2. Each program in [<list_of_python3_programs_to_get_assistance>]:
       2.1. Must create an assistance file named assistance_plan_<algorithm_ID>_<problem_name_without_prime_or_supporter_tag> (for example: assistance_plan_joint_car-assistance_problem_0)
       2.2. The asistance file must contain a list of actions for Supporter interleaved with Prime's actions. The last action of that plan is a Supporter's action. Each Supporter's action must be in a line and must start with "(sup_". Each Prime's action must be in a line and must start with "(pri_".
    3. This program must be in the same directory as ...
       3.1. fast-downward.py
       3.2. <directory_name_with_domains_and_problems>
       3.3. each program of [<list_of_python3_programs_to_get_assistance>]
       3.4. the created assistance file.
       3.5. jointDomain_algorithm.py, to get the minimum total-cost.
       3.6. WARNING: Files with the following names will be overwritten: log, <directory_name_with_domains_and_problems>_contain, auxProblem_prime.pddl, auxProblem_supporter.pddl, sas_plan, output.sas, whole_plan.pddl, cost_table.csv and time_table.csv.
    4. This program create 7 tables:
       4.1. cost_table.csv: contains the total-cost of each algorithm in each problem, the total-cost without asistance in each problem, and the minimun total-cost that could be obtained with assistance in each problem.
          4.1.1 total-cost = omega * all Prime actions + all Supporter actions
       4.2. primeCost_table.csv: contains Prime's total cost (considering omega).
       4.3. supporterCost_table.csv: contains Supporter's total cost (considering omega).
       4.4. primeTime_table.csv: contains the total time to compute all Prime's plan in each problem.
       4.5. supporterTime_table.csv: contains the total time to compute all Supporter's plan in each problem.
       4.6. numberPrimePlans_table.csv: contains the total number of plans computed by Prime.
       4.7. numberSupporterPlans_table.csv: contains the total number of plans computed by Supporter.
       4.8. Rare_cases ==> None: both agents will always do noop   ; loop: the same agent has reached a state that he had already reached previously   ; over_K-value: total-cost > <k-value>   ; ERROR: internal error
    5. Set parameters:
       5.1. fast-downward parameters: --overall-time-limit 1800 --overall-memory-limit 8G --search "astar(ipdb())"
       5.2. <K-value> is a number >= 1 or infinity. The assistance algorithm will stop (and will be marked as unsolvable) if <k-value> is not infinity and the total-cost so far > total-cost without assistance * <k-value>
       5.3. <omega> is a number >= 1. <omega> * minimum Prime action cost (except noop) must be > than the sum of all Supporter actions until the goal is reached.
    6. Characteristics of the search process: 
       6.1. The Supporter agent does an action first. 
       6.2. If Prime doesn't get an action to do, it will execute noop (no operation). 
       6.3. If Supporter agent doesn't get an action to do, it will execute noop (no operation). 
       6.4. If the Supporter agent does not change the Prime state, the Prime agent can continue executing the plan calculated in the previous timestep. 
       6.5. If the Prime agent executes the action that Supporter though that Prime  was going to execute, Supporter can continue executing the plan calculated in the previous timestep. 
       6.6. LOOP: When an agent executes an action different from noop and reaches a state (Prime state U Supporter state) that it had already reached previously. The execution stops. 
       6.7. When the Supporter agent does noop after the Prime agent also does noop, the execution stops (noops loop). 
    7. Characteristics of the domains: 
       7.1. STRIPS: only preconditions, adds and dels. 
       7.2. No negative preconditions. 
       7.3. No functions except total-cost (that must appear in both domains). total-cost must represent the cost of the actions (>=0).
       7.4. The noop (no operation) action must not be included in the domain definitions, but both agents can execute it. 
    8. Characteristics of the problems: 
       8.1. The type of each object must be indicated after a hyphen and spaced. Example: obj1 obj2 - type1
       8.2. In the initial state total-cost must be = 0.
       8.3. Goals are not achieved in the initial state.
       8.4. Metric must be minimize total-cost.
       8.5. If a predicate is shared by both agents (same name), all its instances are also shared by both agents.
    '''
    print(x)
    
    
    
    
    
def getDomainAndProblemName(directory, number_algorithms): 
    domain_and_problem_names = []
    domain_and_problem_totalCostPrime = []
    domain_and_problem_minPrimeCost = []
    
    domains = []
    problems = []
    start_reading = False
    folders = ""
    aux = [None, None, None]
    
    os.system('ls -R ' + directory + '> ' + directory + '_contain')
    file = open(directory + "_contain")
    for line in file: 
        if start_reading == False: 
            if line == "\n":
                start_reading = True
        else: 
            if line[-1] == "\n": 
                line = line[:-1]
            if line == "":
                continue
            elif line[-1] == ":": 
                folders = line[:-1] + "/"
                if domains != []: 
                    domain_and_problem_names.append([domains, problems])
                    aux2 = []
                    for i in range(len(problems)): 
                        aux2.append([None] * number_algorithms)
                    domain_and_problem_totalCostPrime.append(aux2)
                    domain_and_problem_minPrimeCost.append([None] * len(problems))
                    domains = []
                    problems = []
            else: 
                if line.find("_prime.pddl") > 0: 
                    aux[0] = line.replace("_prime.pddl","")
                    aux[1] = folders + line
                else: 
                    aux[2] = folders + line
                    if line.find("domain") > 0 : 
                        domains = aux
                    else:
                        problems.append(aux)
                    aux = [None, None, None]
                    
    domain_and_problem_names.append([domains, problems])
    aux2 = []
    for i in range(len(problems)): 
        aux2.append([None] * number_algorithms)
    domain_and_problem_totalCostPrime.append(aux2)
    domain_and_problem_minPrimeCost.append([None] * len(problems))
    
    file.close()
    os.remove(directory + "_contain")
    
    domain_and_problem_totalCostSupporter = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_totalCost = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_totalTimePrime = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_totalTimeSupporter = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_numberPrimePlans = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_numberSupporterPlans = copy.deepcopy(domain_and_problem_totalCostPrime)
    domain_and_problem_minSupporterCost = copy.deepcopy(domain_and_problem_minPrimeCost)
    domain_and_problem_minCost = copy.deepcopy(domain_and_problem_minPrimeCost)
    domain_and_problem_minTime = copy.deepcopy(domain_and_problem_minPrimeCost)
    domain_and_problem_normalCost = copy.deepcopy(domain_and_problem_minPrimeCost)
    domain_and_problem_normalTime = copy.deepcopy(domain_and_problem_minPrimeCost)
    return domain_and_problem_names, domain_and_problem_totalCostPrime, domain_and_problem_totalCostSupporter, domain_and_problem_totalCost, domain_and_problem_totalTimePrime, domain_and_problem_totalTimeSupporter, domain_and_problem_numberPrimePlans, domain_and_problem_numberSupporterPlans, domain_and_problem_minPrimeCost, domain_and_problem_minSupporterCost, domain_and_problem_minCost, domain_and_problem_minTime, domain_and_problem_normalCost, domain_and_problem_normalTime 
    
    
    
    
    
def getStructureActions(domain):
    actions_to_instance = {} 
    domain_name = ""
    possible_predicates = []
    reading_header = True
    reading_predicates = False
    reading_functions = False
    reading_actions = False
    
    reading_part_action = 0 #0 action_name, 1 parameters, 2 preconditions, 3 effects
    action_to_instance = [0, [], [], []]
    action_name = ""
    parameter_number = 1
    dictionary_parameters = {}
    predicate_to_instance = []
    is_del_predicate = 0
    next_is_cost = False
    next_word_is_domain_name = False
    
    complete_file = getCompleteFile(domain)
    
    
    for word in complete_file: 
        word = word.lower()

        if reading_header:
            if word == "(:predicates": 
                reading_header = False
                reading_predicates = True
            elif word == "(domain": 
                next_word_is_domain_name = True
            elif next_word_is_domain_name:
                next_word_is_domain_name = False
                domain_name = cleanParenthesis(word)
                
        elif reading_predicates: 
            if word == "(:action": 
                reading_actions = True
                reading_predicates = False
            elif word == "(:functions": 
                reading_functions = True
                reading_predicates = False
            elif word[0] == "(": 
                if word[-2] == ")": 
                    possible_predicates.append(word[1:-2])
                if word[-1] == ")": 
                    possible_predicates.append(word[1:-1])
                else: 
                    possible_predicates.append(word[1:])
                    
        elif reading_functions: 
            if word == "(:action": 
                reading_actions = True
                reading_functions = False

        elif reading_actions: 
            if reading_part_action == 0: 
                action_name = word
                reading_part_action = 1
            elif reading_part_action == 1: 
                if word == ":precondition": 
                    reading_part_action = 2
                    parameter_number = 1
                else: 
                    word = cleanParenthesis(word)
                    if word != "" and word != ":parameters": 
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
                elif predicate_to_instance == []: 
                    predicate_to_instance.append(cleanParenthesis(word))
                else: 
                    cleaned_word = cleanParenthesis(word)
                    if word[0] == "?": 
                        predicate_to_instance.append(dictionary_parameters[cleaned_word])
                    else: 
                        predicate_to_instance.append(cleaned_word)
                if word[-1] == ")": 
                    action_to_instance[1].append(predicate_to_instance)
                    predicate_to_instance = []

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
                    continue
                elif word == "(total-cost)": 
                    next_is_cost = True
                    continue
                elif next_is_cost: 
                    cost = float(cleanParenthesis(word))
                    action_to_instance[0] = cost
                    next_is_cost = False 
                    continue
                elif word == "(not": 
                    is_del_predicate = 1
                    continue
                elif word[0] == "(": 
                    predicate_to_instance.append(cleanParenthesis(word))
                else: 
                    cleaned_word = cleanParenthesis(word)
                    if word[0] == "?": 
                        predicate_to_instance.append(dictionary_parameters[cleaned_word])
                    else: 
                        predicate_to_instance.append(cleaned_word)
                if word[-1] == ")": 
                    action_to_instance[2+is_del_predicate].append(predicate_to_instance)
                    predicate_to_instance = []
                    is_del_predicate = 0

            
    dictionary_parameters = {}
    actions_to_instance[action_name] = action_to_instance
    action_to_instance = [0, [], [], []]
    
    return actions_to_instance, domain_name, possible_predicates





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





def solveFD(domain, problem): 
    start = time.time()
    os.system('python3.7 fast-downward.py --log-level warning --overall-time-limit 1800 --overall-memory-limit 8G ' + domain + ' ' + problem + ' --search "astar(ipdb())" > log')
    return time.time() - start





def getTotalCost(plan_name, type_plan, omega): 
    file_plan = open(plan_name) 
    for line in file_plan: 
        if line[0] == ";": 
            divided_line = line.split()
            if type_plan == "NORMAL": 
                file_plan.close()
                return getTotalCostNormal(divided_line, omega)
            elif type_plan == "MINIMUM": 
                file_plan.close()
                return getTotalCostMinimum(divided_line, omega)
    return -1, -1





def getTotalCostNormal(divided_line, omega): 
    return float(divided_line[3]) * omega, 0





def getTotalCostMinimum(divided_line, omega): 
    return float(divided_line[3]) * omega, float(divided_line[6])





def solve(prime_domain, supporter_domain, prime_problem, supporter_problem, algorithm, ID, omega): 
    start = time.time()
    os.system('python3.7 ' + algorithm + ' ' + prime_domain + ' ' + prime_problem + ' ' + supporter_domain + ' ' + supporter_problem + ' ' + str(omega) + ' > log ' )
    time_aux = time.time() - start
    aux = prime_problem.split("/")
    aux = aux[-1]
    filename = "assistance_plan_" + ID + "_" + aux.replace("_prime.pddl", "")
    return filename, time_aux





def fileWithAssistance(filename):
    complete_file = []
    file_plan = open(filename) 
    for line in file_plan: 
        if line[-1] == "\n": 
            line = line[:-1] 
        complete_file.append(line)
    file_plan.close()
    if complete_file[0] == "(sup_noop )" and complete_file[1] == "; Prime cost: 0 Supporter cost: 0":  
        return False
    return True





def getObjectsInitAndGoals(problem): 
    objects = {}
    init = [] 
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
                if len(predicate) > 5 and predicate[:6] == "(not (": 
                    predicate += ")"
                goals.append(predicate)
                predicate = ""
            
    return objects, init, goals 





def createProblem(objects, current_state, goals, filename, domain_name): 
    file = open(filename, "w")
    
    file.write("(define (problem " + filename.replace(".pddl","") + ")\n")
    file.write("(:domain " + domain_name + ")\n")
    file.write("(:objects\n")
    
    for typ in objects: 
        file.write("    ")
        for obj in objects[typ]: 
            file.write(obj + " ")
        file.write("- " + typ + "\n")
    file.write(")\n")
    file.write("\n")
    
    file.write("(:init\n")
    file.write("    (= (total-cost) 0)\n")
    for pred in current_state: 
        file.write("    " + pred + "\n")
    file.write(")\n")
    file.write("\n")
    
    if goals != []: 
        file.write("(:goal\n")
        file.write("  (and\n")
        for pred in goals: 
            file.write("    " + pred + "\n")
        file.write("  )\n")
        file.write(")\n")

        file.write("(:metric minimize (total-cost))\n")
        
    file.write(")\n")
    file.close()





def getSupporterPlanStructure(filename): 
    supporter_plan = []
    pair_of_actions = []
    first_action = True
    file = open(filename)
    for action in file: 
        if action[0] == "(": 
            if action[-1] == "\n": 
                action = action[:-1]
            action = action[1:-1]
            action = action.split()
            if first_action: 
                supporter_plan.append(["", action])
                first_action = False
            else: 
                pair_of_actions.append(action)
                if len(pair_of_actions) == 2: 
                    supporter_plan.append(pair_of_actions)
                    pair_of_actions = []
    file.close()	
    os.remove(filename)
    return supporter_plan





def getFirstActionFromStructure(supporter_plan): 
    supporter_action = supporter_plan.pop(0)
    supporter_action = supporter_action[1]
    supporter_action[0] = supporter_action[0][4:]
    return supporter_action, supporter_plan





def instantiateAction(structure_actions, action): 
    if action[0] == "noop_0": 
        exit()
    instantiated_action = copy.deepcopy(structure_actions[action[0]])
    for i in range(2, 4): 
        for index in range(len(instantiated_action[i])): 
            for index_parameter in range(1, len(instantiated_action[i][index])): 
                if (type(instantiated_action[i][index][index_parameter]) is int): 
                    instantiated_action[i][index][index_parameter] = action[instantiated_action[i][index][index_parameter]]
    adds = []
    for predicate in instantiated_action[2]: 
        add = "(" + predicate[0]
        for i in range(1, len(predicate)):
            add = add + " " + predicate[i]
        add = add + ")"
        adds.append(add)
    dels = []
    for predicate in instantiated_action[3]: 
        delete = "(" + predicate[0]
        for i in range(1, len(predicate)):
            delete = delete + " " + predicate[i]
        delete = delete + ")"
        dels.append(delete)
    return adds, dels, instantiated_action[0]





def doAction(current_agent1_state, current_agent2_state, adds, dels, possible_agent1_predicates, possible_agent2_predicates):
    has_agent1_state_changed = False
    has_agent2_state_changed = False
        
    for add in adds: 
        add_name = add.split()
        add_name = add_name[0]
        if add_name[-1] == ")": 
            add_name = add_name[1:-1]
        else: 
            add_name = add_name[1:]
        if add not in current_agent1_state and add_name in possible_agent1_predicates: 
            current_agent1_state.append(add)
            has_agent1_state_changed = True
        if add not in current_agent2_state and add_name in possible_agent2_predicates: 
            current_agent2_state.append(add)
            has_agent2_state_changed = True
            
    for delete in dels: 
        del_name = delete.split()
        del_name = del_name[0]
        if del_name[-1] == ")": 
            del_name = del_name[1:-1]
        else: 
            del_name = del_name[1:]
        if delete in current_agent1_state and del_name in possible_agent1_predicates: 
            current_agent1_state.remove(delete)
            has_agent1_state_changed = True
        if delete in current_agent2_state and del_name in possible_agent2_predicates: 
            current_agent2_state.remove(delete)
            has_agent2_state_changed = True
        
    current_agent1_state.sort()
    current_agent2_state.sort()
    return current_agent1_state, current_agent2_state, has_agent1_state_changed, has_agent2_state_changed





def goalStateAchieved(current_state, goals):
    for goal in goals: 
        if len(goal) > 5 and goal[:6] == "(not (": 
            divided_goal = goal.split("(")
            predicate = "(" + divided_goal[2][:-1]
            if predicate in current_state: 
                return False
        else: 
            if goal not in current_state: 
                return False
    return True





def createWholePlan(whole_plan): 
    whole_plan_file = open("whole_plan.pddl", "w") 
    index = 0
    for action in whole_plan: 
        whole_plan_file.write(str(index) + ": (")
        for part in action: 
            whole_plan_file.write(part + " ")
        whole_plan_file.write(")\n")
        index += 1
    whole_plan_file.close()





def planIsValid(domain, problem, index): 
    domain_name = domain.split("/")
    domain_name = domain_name[-1]
    domain_name = domain_name.replace("_prime", "")
    domain_name = "joint_" + domain_name 
    problem_name = problem.split("/")
    problem_name = problem_name[-1]
    problem_name = problem_name.replace("_prime", "")
    problem_name = "joint_" + problem_name 
    folder = "prueba" + str(index)
    os.system("mkdir " + folder)
    os.system("mv whole_plan.pddl " + folder)
    os.system("cp " + domain_name + " " + folder)
    os.system("cp " + problem_name + " " + folder)
    os.system("mv " + folder + " " + "all_plans_to_validate")





def getPlan(filename): 
    prime_plan = []
    file = open(filename)
    for action in file: 
        if action[0] == ";": 
            break
        if action[-1] == "\n": 
            action = action[:-1]
        action = action[1:-1]
        action = action.split()
        prime_plan.append(action)
    file.close()
    return prime_plan





def generateShortFile(action): 
    if os.path.isfile("lastPrimeAction"):
        os.remove("lastPrimeAction")
    last_prime_action_file = open("lastPrimeAction","w")
    last_prime_action_file.write(action)
    last_prime_action_file.close()





def getFirstAction(prime_plan):
    return prime_plan.pop(0), prime_plan





def main(): 
    directory, algorithms, k_value, omega = readParameters()
    if directory == "": 
        return -1
    
    domain_and_problem_names, domain_and_problem_totalCostPrime, domain_and_problem_totalCostSupporter, domain_and_problem_totalCost, domain_and_problem_totalTimePrime, domain_and_problem_totalTimeSupporter, domain_and_problem_numberPrimePlans, domain_and_problem_numberSupporterPlans, domain_and_problem_minPrimeCost, domain_and_problem_minSupporterCost, domain_and_problem_minCost, domain_and_problem_minTime, domain_and_problem_normalCost, domain_and_problem_normalTime = getDomainAndProblemName(directory, len(algorithms))
    
    if os.path.isfile("sas_plan"):
        os.remove("sas_plan")
    ID_algorithms = {}
    ID_algorithms["jointDomain_algorithm.py"] = "joint"
    ID_algorithms["LTRA_algorithm.py"] = "LTRA"
    ID_algorithms["LTRA-V2_algorithm.py"] = "LTRAV2"
    ID_algorithms["STRA_algorithm.py"] = "STRA"
    ID_algorithms["BOTA-V2_algorithm.py"] = "BOTAV2"
    ID_algorithms["BOTA-V2-psi_algorithm.py"] = "BOTAV2-psi"
    ID_algorithms_file = {}
    ID_algorithms_file["jointDomain_algorithm.py"] = "joint"
    ID_algorithms_file["LTRA_algorithm.py"] = "LTRA"
    ID_algorithms_file["LTRA-V2_algorithm.py"] = "LTRAV2"
    ID_algorithms_file["STRA_algorithm.py"] = "STRA"
    ID_algorithms_file["BOTA-V2_algorithm.py"] = "BOTAV2"
    ID_algorithms_file["BOTA-V2-psi_algorithm.py"] = "BOTAV2"
    plans_directory_index = 0
    os.system("mkdir all_plans_to_validate")

    
    for i in range(len(domain_and_problem_names)): 
        structure_prime_actions, prime_domain_name, possible_prime_predicates = getStructureActions(domain_and_problem_names[i][0][1])
        structure_supporter_actions, supporter_domain_name, possible_supporter_predicates = getStructureActions(domain_and_problem_names[i][0][2])
        
        for j in range(len(domain_and_problem_names[i][1])):
            
            time_aux = solveFD(domain_and_problem_names[i][0][1], domain_and_problem_names[i][1][j][1])
            if os.path.isfile("sas_plan"):
                total_costPrime, total_costSupporter = getTotalCost("sas_plan", "NORMAL", omega)
                domain_and_problem_normalCost[i][j] = total_costPrime
                domain_and_problem_normalTime[i][j] = time_aux
                os.remove("sas_plan")
            
            filename, time_aux = solve(domain_and_problem_names[i][0][1], domain_and_problem_names[i][0][2], domain_and_problem_names[i][1][j][1], domain_and_problem_names[i][1][j][2], "jointDomain_algorithm.py", ID_algorithms["jointDomain_algorithm.py"], omega)
            if os.path.isfile(filename) and fileWithAssistance(filename):
                total_costPrime, total_costSupporter = getTotalCost(filename, "MINIMUM", omega)
                domain_and_problem_minPrimeCost[i][j] = total_costPrime
                domain_and_problem_minSupporterCost[i][j] = total_costSupporter
                domain_and_problem_minCost[i][j] = total_costPrime + total_costSupporter
                domain_and_problem_minTime[i][j] = time_aux
                os.remove(filename)
            
            
            prime_objects, prime_state, prime_goals = getObjectsInitAndGoals(domain_and_problem_names[i][1][j][1])
            suporter_objects, supporter_state, supporter_goals = getObjectsInitAndGoals(domain_and_problem_names[i][1][j][2])
            
            for k in range(len(algorithms)):
                current_prime_state = copy.deepcopy(prime_state)
                current_supporter_state = copy.deepcopy(supporter_state)
                total_costPrime = 0 
                total_costSupporter = 0 
                total_time_prime = 0 
                total_time_supporter = 0 
                number_prime_plans = 0
                number_supporter_plans = 0
                goals_achieved = False
                has_prime_state_changed = True
                has_supporter_state_changed = True
                prime_has_not_calculate_initial_plan = True
                all_states = []
                prime_has_done_noop = False
                whole_plan = []
                prime_plan = []
                supporter_plan = []
                last_prime_action = []
                
                while not goals_achieved: 
                    if not os.path.isfile("auxProblem_prime.pddl"):
                        createProblem(prime_objects, current_prime_state, prime_goals, "auxProblem_prime.pddl", prime_domain_name)
                        has_prime_state_changed = False
                    if not os.path.isfile("auxProblem_supporter.pddl"):
                        createProblem(suporter_objects, current_supporter_state, supporter_goals, "auxProblem_supporter.pddl", supporter_domain_name)
                        has_supporter_state_changed = False
                    if supporter_plan == [] or supporter_plan[0][0] != last_prime_action: 
                        filename, time_aux = solve(domain_and_problem_names[i][0][1], domain_and_problem_names[i][0][2], "auxProblem_prime.pddl", "auxProblem_supporter.pddl", algorithms[k], ID_algorithms_file[algorithms[k]], omega)
                        total_time_supporter += time_aux
                        number_supporter_plans += 1
                        supporter_plan = getSupporterPlanStructure(filename)
                    
                    if supporter_plan != []:
                        supporter_action, supporter_plan = getFirstActionFromStructure(supporter_plan)
                        aux = copy.deepcopy(supporter_action)
                        aux[0] = "sup_" + aux[0]
                        whole_plan.append(aux)
                        if supporter_action[0] == "noop": 
                            if prime_has_done_noop : 
                                break
                        else: 
                            adds, dels, cost = instantiateAction(structure_supporter_actions, supporter_action)
                            current_supporter_state, current_prime_state, has_supporter_state_changed, has_prime_state_changed = doAction(current_supporter_state, current_prime_state, adds, dels, possible_supporter_predicates, possible_prime_predicates)
                            state = [copy.deepcopy(current_supporter_state), copy.deepcopy(current_prime_state), "supporter"]
                            if state in all_states: 
                                domain_and_problem_totalCostPrime[i][j][k] = "loop"
                                domain_and_problem_totalCostSupporter[i][j][k] = "loop"
                                domain_and_problem_totalCost[i][j][k] = "loop"
                                domain_and_problem_totalTimePrime[i][j][k] = "loop"
                                domain_and_problem_totalTimeSupporter[i][j][k] = "loop"
                                domain_and_problem_numberPrimePlans[i][j][k] = "loop"
                                domain_and_problem_numberSupporterPlans[i][j][k] = "loop"
                                break
                            else: 
                                all_states.append(state)
                            if has_prime_state_changed: 
                                os.remove("auxProblem_prime.pddl")
                                prime_plan = []
                            if has_supporter_state_changed: 
                                os.remove("auxProblem_supporter.pddl")

                            total_costSupporter += cost
                            if domain_and_problem_normalCost[i][j] != None and k_value != "infinity" and total_costPrime + total_costSupporter > domain_and_problem_normalCost[i][j] * k_value: 
                                domain_and_problem_totalCostPrime[i][j][k] = "over_K-value"
                                domain_and_problem_totalCostSupporter[i][j][k] = "over_K-value"
                                domain_and_problem_totalCost[i][j][k] = "over_K-value"
                                domain_and_problem_totalTimePrime[i][j][k] = "over_K-value"
                                domain_and_problem_totalTimeSupporter[i][j][k] = "over_K-value"
                                domain_and_problem_numberPrimePlans[i][j][k] = "over_K-value"
                                domain_and_problem_numberSupporterPlans[i][j][k] = "over_K-value"
                                break

                            if goalStateAchieved(current_prime_state, prime_goals):
                                createWholePlan(whole_plan)
                                planIsValid(domain_and_problem_names[i][0][1], domain_and_problem_names[i][1][j][1], plans_directory_index)
                                plans_directory_index += 1
                                if True: 
                                    goals_achieved = True
                                    domain_and_problem_totalCostPrime[i][j][k] = total_costPrime
                                    domain_and_problem_totalCostSupporter[i][j][k] = total_costSupporter
                                    domain_and_problem_totalCost[i][j][k] = total_costPrime + total_costSupporter
                                    domain_and_problem_totalTimePrime[i][j][k] = total_time_prime
                                    domain_and_problem_totalTimeSupporter[i][j][k] = total_time_supporter
                                    domain_and_problem_numberPrimePlans[i][j][k] = number_prime_plans
                                    domain_and_problem_numberSupporterPlans[i][j][k] = number_supporter_plans
                                else: 
                                    domain_and_problem_totalCostPrime[i][j][k] = "ERROR"
                                    domain_and_problem_totalCostSupporter[i][j][k] = "ERROR"
                                    domain_and_problem_totalCost[i][j][k] = "ERROR"
                                    domain_and_problem_totalTimePrime[i][j][k] = "ERROR"
                                    domain_and_problem_totalTimeSupporter[i][j][k] = "ERROR"
                                    domain_and_problem_numberPrimePlans[i][j][k] = "ERROR"
                                    domain_and_problem_numberSupporterPlans[i][j][k] = "ERROR"
                                break
                    
                    else:
                        whole_plan.append(["sup_noop"])
                        if prime_has_done_noop: 
                            break
                    
                    
                    if prime_has_not_calculate_initial_plan or has_prime_state_changed: 
                        prime_has_not_calculate_initial_plan = False
                        if not os.path.isfile("auxProblem_prime.pddl"):
                            createProblem(prime_objects, current_prime_state, prime_goals, "auxProblem_prime.pddl", prime_domain_name)
                            has_prime_state_changed = False
                        time_aux = solveFD(domain_and_problem_names[i][0][1], "auxProblem_prime.pddl")
                        total_time_prime += time_aux
                        number_prime_plans += 1
                        
                        if os.path.isfile("sas_plan"):
                            prime_plan = getPlan("sas_plan")
                            os.remove("sas_plan")
                        else: 
                            prime_has_done_noop = True
                            whole_plan.append(["pri_noop"])
                            generateShortFile("pri_noop")
                            last_prime_action = ["pri_noop"]
                            
                    elif prime_plan == []: 
                        prime_has_done_noop = True
                        whole_plan.append(["pri_noop"])
                        generateShortFile("pri_noop")
                        last_prime_action = ["pri_noop"]
                            
                    if prime_plan != []: 
                        prime_has_done_noop = False
                        prime_action, prime_plan = getFirstAction(prime_plan)
                        aux = copy.deepcopy(prime_action)
                        aux[0] = "pri_" + aux[0]
                        aux2 = aux[0]
                        for index in range(1, len(aux)): 
                            aux2 = aux2 + " " + aux[index]
                        whole_plan.append(aux)
                        generateShortFile(aux2)
                        last_prime_action = aux
                        adds, dels, cost = instantiateAction(structure_prime_actions, prime_action)
                        current_supporter_state, current_prime_state, has_supporter_state_changed, has_prime_state_changed = doAction(current_supporter_state, current_prime_state, adds, dels, possible_supporter_predicates, possible_prime_predicates)
                        state = [copy.deepcopy(current_supporter_state), copy.deepcopy(current_prime_state), "prime"]
                        if state in all_states: 
                            domain_and_problem_totalCostPrime[i][j][k] = "loop"
                            domain_and_problem_totalCostSupporter[i][j][k] = "loop"
                            domain_and_problem_totalCost[i][j][k] = "loop"
                            domain_and_problem_totalTimePrime[i][j][k] = "loop"
                            domain_and_problem_totalTimeSupporter[i][j][k] = "loop"
                            domain_and_problem_numberPrimePlans[i][j][k] = "loop"
                            domain_and_problem_numberSupporterPlans[i][j][k] = "loop"
                            break
                        else: 
                            all_states.append(state)
                        if has_prime_state_changed: 
                            os.remove("auxProblem_prime.pddl")
                        if has_supporter_state_changed and os.path.isfile("auxProblem_supporter.pddl"):
                            os.remove("auxProblem_supporter.pddl")

                        total_costPrime = total_costPrime + cost * omega
                        if domain_and_problem_normalCost[i][j] != None and k_value != "infinity" and total_costPrime + total_costSupporter > domain_and_problem_normalCost[i][j] * k_value: 
                            domain_and_problem_totalCostPrime[i][j][k] = "over_K-value"
                            domain_and_problem_totalCostSupporter[i][j][k] = "over_K-value"
                            domain_and_problem_totalCost[i][j][k] = "over_K-value"
                            domain_and_problem_totalTimePrime[i][j][k] = "over_K-value"
                            domain_and_problem_totalTimeSupporter[i][j][k] = "over_K-value"
                            domain_and_problem_numberPrimePlans[i][j][k] = "over_K-value"
                            domain_and_problem_numberSupporterPlans[i][j][k] = "over_K-value"
                            break

                        if goalStateAchieved(current_prime_state, prime_goals):
                            createWholePlan(whole_plan)
                            planIsValid(domain_and_problem_names[i][0][1], domain_and_problem_names[i][1][j][1], plans_directory_index)
                            plans_directory_index += 1
                            if True: 
                                goals_achieved = True
                                domain_and_problem_totalCostPrime[i][j][k] = total_costPrime
                                domain_and_problem_totalCostSupporter[i][j][k] = total_costSupporter
                                domain_and_problem_totalCost[i][j][k] = total_costPrime + total_costSupporter
                                domain_and_problem_totalTimePrime[i][j][k] = total_time_prime
                                domain_and_problem_totalTimeSupporter[i][j][k] = total_time_supporter
                                domain_and_problem_numberPrimePlans[i][j][k] = number_prime_plans
                                domain_and_problem_numberSupporterPlans[i][j][k] = number_supporter_plans
                            else: 
                                domain_and_problem_totalCostPrime[i][j][k] = "ERROR"
                                domain_and_problem_totalCostSupporter[i][j][k] = "ERROR"
                                domain_and_problem_totalCost[i][j][k] = "ERROR"
                                domain_and_problem_totalTimePrime[i][j][k] = "ERROR"
                                domain_and_problem_totalTimeSupporter[i][j][k] = "ERROR"
                                domain_and_problem_numberPrimePlans[i][j][k] = "ERROR"
                                domain_and_problem_numberSupporterPlans[i][j][k] = "ERROR"
                            break
                
                
                if os.path.isfile("auxProblem_prime.pddl"): 
                    os.remove("auxProblem_prime.pddl")
                if os.path.isfile("auxProblem_supporter.pddl"): 
                    os.remove("auxProblem_supporter.pddl")
                if os.path.isfile("lastPrimeAction"):
                    os.remove("lastPrimeAction")
                        


    file = open("cost_table.csv", "w")
    file.write("domain;problem;cost_without_assistance;minimum_cost_can_be_obtained")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            file.write(";" + str(domain_and_problem_normalCost[i][j]))
            file.write(";" + str(domain_and_problem_minCost[i][j]))
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_totalCost[i][j][k]))
            file.write("\n")
    file.close()

    file = open("primeCost_table.csv", "w")
    file.write("domain;problem;cost_without_assistance;minimum_cost_can_be_obtained")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            file.write(";" + str(domain_and_problem_normalCost[i][j]))
            file.write(";" + str(domain_and_problem_minPrimeCost[i][j]))
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_totalCostPrime[i][j][k]))
            file.write("\n")
    file.close()

    file = open("supporterCost_table.csv", "w")
    file.write("domain;problem;cost_without_assistance;minimum_cost_can_be_obtained")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            file.write(";0")
            file.write(";" + str(domain_and_problem_minSupporterCost[i][j]))
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_totalCostSupporter[i][j][k]))
            file.write("\n")
    file.close()
    
    file = open("primeTime_table.csv", "w")
    file.write("domain;problem;time_without_assistance;minimum_time_can_be_obtained")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            file.write(";" + str(domain_and_problem_normalTime[i][j]))
            file.write(";" + str(domain_and_problem_minTime[i][j]))
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_totalTimePrime[i][j][k]))
            file.write("\n")
    file.close()
    
    file = open("supporterTime_table.csv", "w")
    file.write("domain;problem;time_without_assistance;minimum_time_can_be_obtained")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            file.write(";" + str(domain_and_problem_normalTime[i][j]))
            file.write(";" + str(domain_and_problem_minTime[i][j]))
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_totalTimeSupporter[i][j][k]))
            file.write("\n")
    file.close()
    
    file = open("numberPrimePlans_table.csv", "w")
    file.write("domain;problem")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_numberPrimePlans[i][j][k]))
            file.write("\n")
    file.close()
    
    file = open("numberSupporterPlans_table.csv", "w")
    file.write("domain;problem")
    for alg in algorithms: 
        file.write(";" + ID_algorithms[alg])
    file.write("\n")
    for i in range(len(domain_and_problem_names)): 
        file.write(domain_and_problem_names[i][0][0])
        for j in range(len(domain_and_problem_names[i][1])):
            file.write(";" + domain_and_problem_names[i][1][j][0])
            for k in range(len(algorithms)):
                file.write(";" + str(domain_and_problem_numberSupporterPlans[i][j][k]))
            file.write("\n")
    file.close()
    
    os.remove("log")
    return 0 
    
    
    
main() 
