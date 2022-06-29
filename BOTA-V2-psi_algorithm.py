import os, sys
def main(): 
	os.system('python3.7 BOTA-V2_algorithm.py ' + sys.argv[1] + ' ' + sys.argv[2] + ' ' + sys.argv[3] + ' ' + sys.argv[4] + ' ' + sys.argv[5] + ' 1000000 > log2 ' )
	os.remove("log2")
main()