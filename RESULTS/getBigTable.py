
import sys, os, math
from decimal import *
import statistics



def readParameters(): 
    if len(sys.argv) == 2 and os.path.isdir(sys.argv[1]): 
        return sys.argv[1]
    else: 
        print("Execution: python3 getBigTable.py <directory_name>")
        print("WARNING!!! Line 56: (os.system(\"FD/VAL/./validate -t 1 \" + dominio + \" \" + problema + \" \" + plan + \" > log\")) must be modified. The path to the plan validator must be changed.")
    return -1





def checkPlans(directory): 
    is_all_ok = True
    for i in range(1,7): 
        directory_name = directory + "/results" + str(i) + "/all_plans_to_validate"
        print("In " + directory_name + " ...")
        os.system('ls -R ' + directory_name + ' > directories_contain')
        file = open('directories_contain')
        
        ignore = True
        ruta = ""
        dominio = ""
        problema = ""
        plan = ""
        contador = 0
        exitosos = 0
        no_exitoso = True
        
        for line in file: 
            if line[-1] == "\n": 
                line = line[:-1]
            if line != "": 
                if line[-1] == ":": 
                    if line.find("/prueba") >= 0: 
                        ruta = line[:-1] + "/"
                        ignore = False
                    else: 
                        ignore = True
                elif not ignore: 
                    contador += 1
                    if line.find("domain") >= 0: 
                        dominio = ruta + line
                    if line.find("problem") >= 0: 
                        problema = ruta + line
                    if line.find("whole_plan") >= 0: 
                        plan = ruta + line
                    if contador == 3: 
                        os.system("FD/VAL/./validate -t 1 " + dominio + " " + problema + " " + plan + " > log")
                        no_exitoso = True
                        file2 = open("log")
                        for linea in file2: 
                            if linea.find("Plan invalid") >= 0 or linea.find("Failed plans") >= 0: 
                                print("MAL")
                                print("     " + dominio)
                                print("     " + problema)
                                print()
                            if linea.find("Successful plans") >= 0: 
                                no_exitoso = False
                                exitosos += 1                        
                        file2.close()
                        if no_exitoso: 
                            is_all_ok = False
                            print("NO EXITOSO")
                            print("     " + dominio)
                            print("     " + problema)
                            print()
                        os.remove("log")
                        contador = 0
    
        file.close()
        os.remove("directories_contain")
        print("-> Exitosos en results" + str(i) + ": " + str(exitosos))
    return is_all_ok





def getAllResults(directory, filename, value): 
    all_results = {}
    for i in range(1,7): 
        results = getResults(directory + "/results" + str(i) + "/" + filename, value)
        all_results[results[0][0]] = results
    return all_results 
    
    
    
    
    
def getResults(filename, value): 
    aux = {}
    file = open(filename)
    first_line = True
    for line in file: 
        if line[-1] == "\n": 
            line = line[:-1]
        if line == "": 
            continue
        if first_line: 
            first_line = False
        else: 
            line_split = line.split(";")
            number_index = line_split[1].find("_problem_") + 9
            number = int(line_split[1][number_index:])
            for i in range(2, len(line_split)): 
                if (line_split[i] != "loop" and line_split[i] != "None"): 
                    line_split[i] = float(line_split[i]) / value
            aux[number] = line_split
    file.close()
    results = []
    for i in range(len(aux)): 
        results.append(aux[i])
    return results





def isNumeric(element): 
    if element == "None" or element == "loop" or element == "-": 
        return False 
    return True





def getAnotherData(supporter_costs, prime_costs, total_times, supporter_replans): 
    big_table = []
    domain_order = ["car-assistance1_domain", "car-assistance2_domain", "visitall-assistance_domain", "termes-assistance1_domain", "teleport-assistance6_domain", "teleport-assistance7_domain"]
    algorithm_order = ["sin_supporter", "LTRA", "BOTA-V2", "BOTA-V2-psi"]
    id_dictionary_domains = {}
    id_dictionary_domains["car-assistance1_domain"] = 0
    id_dictionary_domains["car-assistance2_domain"] = 1
    id_dictionary_domains["visitall-assistance_domain"] = 2
    id_dictionary_domains["termes-assistance1_domain"] = 3
    id_dictionary_domains["teleport-assistance6_domain"] = 4
    id_dictionary_domains["teleport-assistance7_domain"] = 5
    id_dictionary_algorithm = {}
    id_dictionary_algorithm["sin_supporter"] = 1
    id_dictionary_algorithm["LTRA"] = 2
    id_dictionary_algorithm["BOTA-V2"] = 3
    id_dictionary_algorithm["BOTA-V2-psi"] = 4
    big_table.append(["Dominio", "propuesta", "% resueltos", "% inanicion", "% loop", "% mejora coste prime", "% ahora pueden resolverse", "% empeora coste prime", "% ahora ya no pueden resolverse", "% mismo coste total", "% antes y ahora no se han resuelto", "% supp se mueve en vano", "% prime coste min", "% prime y supp coste min", "ratio mejora prime", "ratio empeora prime", "ratio mejora o empeora prime", "coste supp cuando mejora prime", "coste supp cuando empeora prime", "coste supp cuando se mueve en vano", "coste supp medio", "% cuanto faltaba para llegar al coste mínimo", "% tiempo total <=30s", "multiplicador incremento tiempo total >30", "# veces supp replan cuando mejora prime", "# veces supp replan cuando empeora prime", "# veces supp replan cuando se mueve en vano", "# veces supp replan"])
    for i in domain_order: 
        for j in algorithm_order: 
            aux = [0.0] * (len(big_table[0]))
            aux[0] = i
            aux[1] = j
            big_table.append(aux)
    
    
    for domain in domain_order: 
        for index in range(len(prime_costs[domain])): 
            if isNumeric(prime_costs[domain][index][2]): 
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][2] += 1.0
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21] = []
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21].append(1-(prime_costs[domain][index][3]/prime_costs[domain][index][2]))
            else: 
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][3] += 1.0
        for index in range(len(total_times[domain])): 
            if isNumeric(total_times[domain][index][2]) and total_times[domain][index][2] <= 30: 
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22] += 1.0
    for domain in domain_order: 
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][2] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][2]/len(prime_costs[domain])
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][3] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][3]/len(prime_costs[domain])
        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21] == []: 
            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21] = "(-% | -%)"
        else:
            mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21])
            standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21])
            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][21] = "(" + str(round(mean*100,1)) + "% | " + str(round(standard_deviation*100,1)) + "%)" 
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22]/len(prime_costs[domain])
        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22] != 0: 
            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][22] / big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][2]
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][4] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][5] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][6] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][7] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][8] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][9] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][10] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][11] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][12] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][13] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][14] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][15] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][16] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][17] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][18] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][19] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][20] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][23] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][24] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][25] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][26] = "-"
        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm["sin_supporter"]][27] = "-"
       

    for domain in domain_order: 
        for index in range(len(prime_costs[domain])): 
            for index2 in range(4, len(prime_costs[domain][index])): 
                if isNumeric(prime_costs[domain][index][index2]): 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][2] += 1.0
                    if prime_costs[domain][index][3] == prime_costs[domain][index][index2]:
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][12] += 1.0
                        if supporter_costs[domain][index][3] == supporter_costs[domain][index][index2]:
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][13] += 1.0
                    if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][21] == 0: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][21] = []
                    if prime_costs[domain][index][index2] == 0: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][21].append(0)
                    else: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][21].append(1-(prime_costs[domain][index][3]/prime_costs[domain][index][index2]))
                    if isNumeric(prime_costs[domain][index][2]) == False: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][6] += 1.0
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17] = [supporter_costs[domain][index][index2]]
                        else:
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17].append(supporter_costs[domain][index][index2])
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24] = [supporter_replans[domain][index][index2-2]]
                        else:
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24].append(supporter_replans[domain][index][index2-2])
                    elif prime_costs[domain][index][2] > prime_costs[domain][index][index2]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][5] += 1.0
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][14] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][14] = [1 - prime_costs[domain][index][index2]/prime_costs[domain][index][2]]
                        else: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][14].append(1 - prime_costs[domain][index][index2]/prime_costs[domain][index][2])
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17] = [supporter_costs[domain][index][index2]]
                        else:
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][17].append(supporter_costs[domain][index][index2])
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24] = [supporter_replans[domain][index][index2-2]]
                        else:
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][24].append(supporter_replans[domain][index][index2-2])
                    elif prime_costs[domain][index][2] < prime_costs[domain][index][index2]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][7] += 1.0
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][15] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][15] = [1 - prime_costs[domain][index][index2]/prime_costs[domain][index][2]]
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][18] = [supporter_costs[domain][index][index2]]
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][25] = [supporter_replans[domain][index][index2-2]]
                        else: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][15].append(1 - prime_costs[domain][index][index2]/prime_costs[domain][index][2])
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][18].append(supporter_costs[domain][index][index2])
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][25].append(supporter_replans[domain][index][index2-2])
                    elif prime_costs[domain][index][2] == prime_costs[domain][index][index2] and supporter_costs[domain][index][2] == supporter_costs[domain][index][index2]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][9] += 1.0
                    elif prime_costs[domain][index][2] == prime_costs[domain][index][index2] and supporter_costs[domain][index][2] != supporter_costs[domain][index][index2]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][11] += 1.0
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][19] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][19] = [supporter_costs[domain][index][index2]]
                        else: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][19].append(supporter_costs[domain][index][index2])
                        if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][26] == 0: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][26] = [supporter_replans[domain][index][index2-2]]
                        else: 
                            big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][26].append(supporter_replans[domain][index][index2-2])
                elif isNumeric(prime_costs[domain][index][index2]) == False: 
                    if prime_costs[domain][index][index2] == "None": 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][3] += 1.0
                    elif prime_costs[domain][index][index2] == "loop": 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][4] += 1.0
                    if isNumeric(prime_costs[domain][index][2]): 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][8] += 1.0
                    else: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][10] += 1.0
                        
              
    for domain in domain_order: 
        for index in range(len(supporter_costs[domain])): 
            for index2 in range(4, len(supporter_costs[domain][index])): 
                if isNumeric(supporter_costs[domain][index][index2]): 
                    if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][20] == 0: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][20] = []
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][20].append(supporter_costs[domain][index][index2])
                    if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][27] == 0: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][27] = []
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][27].append(supporter_replans[domain][index][index2-2])
                        
                        
    for domain in domain_order: 
        for index in range(len(total_times[domain])): 
            for index2 in range(4, len(total_times[domain][index])): 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][23] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][23] = [] 
                if isNumeric(total_times[domain][index][index2]) and total_times[domain][index][index2] <= 30: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][22] += 1.0
                else: 
                    if isNumeric(total_times[domain][index][index2]) and isNumeric(total_times[domain][index][2]): 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + index2-2][23].append(total_times[domain][index][index2]/total_times[domain][index][2])
                    
                        
    for domain in domain_order: 
        for algorithm in id_dictionary_algorithm: 
            if id_dictionary_algorithm[algorithm] != 1: 
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][2] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][2]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][3] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][3]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][4] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][4]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][5] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][5]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][6] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][6]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][7] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][7]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][8] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][8]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][9] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][9]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][10] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][10]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][11] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][11]/len(prime_costs[domain])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][12] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][12]/len(prime_costs[domain])
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][12] != 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][12] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][12] / (big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][5] + big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][6])
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][13] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][13]/len(prime_costs[domain])
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][13] != 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][13] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][13] / (big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][5] + big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][6])
                    
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16] = [] # Cuando los dos se pueden resolver 
                aux = int((big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][9] + big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][11]) * len(prime_costs[domain]))
                for i in range(aux): 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16].append(0)
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14] != 0: 
                    for element in big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16].append(element)
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15] != 0: 
                    for element in big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15]: 
                        big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16].append(element)
                    
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14] = "(-% | -%)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14]) #De la población. 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][14] = "(" + str(round(mean*100,1)) + "% | " + str(round(standard_deviation*100,1)) + "%)" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15] = "(-% | -%)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][15] = "(" + str(round(mean*100,1)) + "% | " + str(round(standard_deviation*100,1)) + "%)" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16] == []: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16] = "(-% | -%)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][16] = "(" + str(round(mean*100,1)) + "% | " + str(round(standard_deviation*100,1)) + "%)" 

                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][17] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][17] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][17])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][17])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][17] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][18] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][18] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][18])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][18])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][18] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][19] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][19] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][19])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][19])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][19] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][20] == []: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][20] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][20])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][20])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][20] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                    
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][21] == []: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][21] = "(-% | -%)"
                else:
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][21])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][21])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][21] = "(" + str(round(mean*100,1)) + "% | " + str(round(standard_deviation*100,1)) + "%)" 
                big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][22] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][22]/len(prime_costs[domain])
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][22] != 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][22] = big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][22] / big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][2]
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][23] == []: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][23] = "(X- | X-)"
                else:
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][23])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][23])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][23] = "(X" + str(round(mean,1)) + " | X" + str(round(standard_deviation,1)) + ")" 
                
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][24] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][24] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][24])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][24])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][24] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][25] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][25] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][25])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][25])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][25] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][26] == 0: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][26] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][26])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][26])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][26] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                if big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][27] == []: 
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][27] = "(- | -)"
                else: 
                    mean = statistics.mean(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][27])
                    standard_deviation = statistics.pstdev(big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][27])
                    big_table[id_dictionary_domains[domain]*len(id_dictionary_algorithm) + id_dictionary_algorithm[algorithm]][27] = "(" + str(round(mean,1)) + " | " + str(round(standard_deviation,1)) + ")" 
                    
                    
                    
    for i in range(1, len(big_table)): 
        big_table[i][2] = str(int(big_table[i][2] * 100)) + "%"
        big_table[i][3] = str(int(big_table[i][3] * 100)) + "%"
        if isNumeric(big_table[i][4]): 
            big_table[i][4] = str(int(big_table[i][4] * 100)) + "%"
        if isNumeric(big_table[i][5]): 
            big_table[i][5] = str(int(big_table[i][5] * 100)) + "%"
        if isNumeric(big_table[i][6]): 
            big_table[i][6] = str(int(big_table[i][6] * 100)) + "%"
        if isNumeric(big_table[i][7]): 
            big_table[i][7] = str(int(big_table[i][7] * 100)) + "%"
        if isNumeric(big_table[i][8]): 
            big_table[i][8] = str(int(big_table[i][8] * 100)) + "%"
        if isNumeric(big_table[i][9]): 
            big_table[i][9] = str(int(big_table[i][9] * 100)) + "%"
        if isNumeric(big_table[i][10]): 
            big_table[i][10] = str(int(big_table[i][10] * 100)) + "%"
        if isNumeric(big_table[i][11]): 
            big_table[i][11] = str(int(big_table[i][11] * 100)) + "%"
        if isNumeric(big_table[i][12]): 
            big_table[i][12] = str(round(big_table[i][12] * 100,1)) + "%"
        if isNumeric(big_table[i][13]): 
            big_table[i][13] = str(round(big_table[i][13] * 100,1)) + "%"
        big_table[i][22] = str(int(big_table[i][22] * 100)) + "%"
            
            
    return big_table
            
    
    
    '''
    10 dominios
    7 algoritmos 
    19 datos: 
        - 2 - %problemas que resuelve (7), 
        - 3 - %inanición (7), 
        - 4 - %loop (6), 
        - 5 - % mejora coste prime (6), 
        - 6 - % problemas que no se resolvían y ahora sí (6)
        - 7 - % empeora coste prime (6), 
        - 8 - % problemas que antes se resolvían y ahora no (6)
        - 9 - % mismo coste total que sin asistencia (6), 
        - 10 - % problemas que no se resuelven ni sin asistencia ni con. 
        - 11 - %when_supporter_moves_in_vain (6), 
        - 12 - si mejora %veces consigue coste minimo prime (6), 
        - 13 - si mejora %veces consigue coste minimo total (6), 
        - 14 - ratio_prime_improves_without_assistance cuando mejora y Desviacion tipica (6), 
        - 15 - ratio_prime_improves_without_assistance cuando empeora y Desviacion tipica (6), 
        - 16 - ratio_prime_improves_without_assistance media y Desviacion tipica (cuando mejora, empeora, o mantiene el mismo coste del prime) (6), 
        - 17 - media coste supporter cuando mejora prime (tanto si reduce coste como si pasa a resolverlo cuando sin asistencia no podía) y Desviacion tipica (6), 
        - 18 - media coste suporter cuando empeora prime (siempre y cuando siga pudiendo resolverlo) y Desviacion tipica (6), 
        - 19 - media coste suporter cuando se mueve en vano y Desviacion tipica (6), 
        - 20 - media coste supporter y Desviacion tipica (6), 
        - 21 - ratio cuanto faltaba por mejorar para llegar al coste minimo para el prime usando aquellos problemas que se resuelven y Desviacion tipica (7), 
        - 22 - si lo resuelve, % de problemas con tiempo total <= 30 segundos (7), 
        - 23 - % de incremento del tiempo en aquellos problemas tiempo total > 30 segundos (realmente, solo se tienen en cuenta los problemas que se pueden resolver sin asistencia, y se cacula por cuanto se esta multiplicando el coste, por ejemplo si sin asistencia es 10 y con es 100, imprime un 100/10=10) y Desviacion tipica (6), 
        - 24 - en aquellos problemas que se resuelven media de veces que replanifica el supporter cuando mejora (tanto si reduce coste como si pasa a resolverlo cuando sin asistencia no podía) y Desviacion tipica (6), 
        - 25 - en aquellos problemas que se resuelven media de veces que replanifica el supporter cuando empeora (siempre y cuando siga pudiendo resolverlo) y Desviacion tipica (6), 
        - 26 - en aquellos problemas que se resuelven media de veces que replanifica el supporter cuando se mueve en vano y Desviacion tipica (6), 
        - 27 - en aquellos problemas que se resuelven media de veces que replanifica el supporter y Desviacion tipica (6)
    '''





def getSum(supporter_table, prime_table, limit): 
    total_sum = {}
    for domain in prime_table: 
        all_lines = []
        for index in range(len(prime_table[domain])): 
            line = prime_table[domain][index][:limit]
            for index2 in range(limit, len(prime_table[domain][index])): 
                if isNumeric(supporter_table[domain][index][index2]) and isNumeric(prime_table[domain][index][index2]): 
                    line.append(supporter_table[domain][index][index2] + prime_table[domain][index][index2]) 
                else:  
                    line.append("None") 
            all_lines.append(line)
        total_sum[domain] = all_lines
    return total_sum





def createFiles(big_table): 
    createFile(big_table, "big_table2.csv")





def createFile(table, filename): 
    file = open(filename, "w")
    for line in table: 
        first_element = True
        for element in line: 
            if first_element: 
                file.write(str(element)) 
                first_element = False
            else: 
                file.write(";" + str(element)) 
        file.write("\n") 
    file.close()

    
    


def main(): 
    #-> #Leer comentarios
    #-> #recordar que los tiempos del archivo del prime son iguales que los del supporter en las columnas de minimo y sin asistencia. 

    directory = readParameters()
    if directory == -1: 
        return -1
    #if checkPlans(directory) == False: 
    if False: 
        return -1
    
    
    prime_costs = getAllResults(directory, "primeCost_table.csv", 1000)
    supporter_costs = getAllResults(directory, "supporterCost_table.csv", 1) #De esto y del coste del prime sacar frente de pareto. 
    assistance_costs = getAllResults(directory, "cost_table.csv", 1)
    prime_times = getAllResults(directory, "primeTime_table.csv", 1)
    supporter_times = getAllResults(directory, "supporterTime_table.csv", 1)
    prime_number_replans = getAllResults(directory, "numberSupporterPlans_table.csv", 1)
    supporter_number_replans = getAllResults(directory, "numberPrimePlans_table.csv", 1)
    
    
    total_times = getSum(supporter_times, prime_times, 4)
    
    
    big_table = getAnotherData(supporter_costs, prime_costs, total_times, supporter_number_replans) #When improves putting false and true and giving a numeric value. 
    
    # Medias, desviaciones típicas, etc. al calcular los score. No sé cuales de estas cosas van a hacer falta. Por ahora no lo voy a calcular. 
        
    
    #Debe haber un orden de los dominios entre todos los ficheros 
    createFiles(big_table)
    
	
    return 0 
	
	
	
main() 














# Por cada dominio, 4 cosas: 
# Numero problemas resueltos (una sola tabla con todos los dominios y algoritmos (incluido el best y sin asistencia))
# Coste del prime eje Y y supporter eje X (incluido el best y sin asistencia). 
# Tiempo total (eje x los problemas y eje y el tiempo) (incluido el tiempo sin asistencia)
# Numero veces replanifica supporter (eje x los problemas y eje y el número de veces que sup replanifica (los 6 algoritmos). 









