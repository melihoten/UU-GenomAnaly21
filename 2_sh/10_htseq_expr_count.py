import sys

if ".gff" in sys.argv[1] and ".out" in sys.argv[2]:
	gff = open(sys.argv[1], "r")
	out = open(sys.argv[2],"r")

	# create a dictionary that takes as key the ID of the protein and as value the product
	index={}
	for line in gff.readlines():
		if "ID" in line:
			line=line.rstrip('\n')
			line=line.split('\t')
			line=line[8]
			line=line.split(";")
			line=line[0]+"="+line[len(line)-1]
			line=line.split("=")
			index[line[1]]=line[3]

	# create a list of the proteins that are expressed at least once
	output=[]
	count_expr=0
	count_not_expr=0
	for line in out.readlines():
		if "__" not in line:
			line=line.rstrip('\n')
			line=line.split()
			line[1]=int(line[1])
			if line[1]!=0:
				output.append((index[line[0]],line[1]))
				count_expr+=1
			else:
				count_not_expr+=1
	def takeSecond(elem):
		return elem[1]
	output.sort(key=takeSecond,reverse=True)
	print(f"Number of expressed genes: {count_expr} ({count_expr*100/(count_expr+count_not_expr)}%)")
	print(f"Number of not expressed genes: {count_not_expr} ({count_not_expr*100/(count_expr+count_not_expr)}%)")
	for n in range(0,20):
		print(output[n][0],output[n][1])
