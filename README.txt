1) DOMAINS contains all Domains and problems used in Planning-Based Approach for Silent Proactive Assistance: 
	1.1) car_assistance1
	1.2) car_assistance2
	1.3) teleport_assistance1 (sometimes called teleport_assistance6)
	1.4) teleport_assistance2 (sometimes called teleport_assistance7)
	1.5) termes_assistance (sometimes called termes_assistance1)
	1.6) visitall_assistance 
2) RESULTS contains all our results
	2.1) results_file contais all the results extracted from the execution traces. 
	2.2) big_table.csv contains all processed data from results_file
	2.3) getBigTable.py generates big_table2.csv from results_file. big_table2.csv is equal to big_table2.csv but in Spanish. 
3) jointDomain_algorithm.py is the centralized compilation by turns.
4) BOTA-V2_algorithm.py is BTA (and BTA2 if it is executed with a psi value)
5) BOTA-V2-psi_algorithm.py is BTA2 with psi = 1.000.000
6) LTRA_algorithm.py is CBO
7) Experimental_Environment.py is the execution environment by turns. 
