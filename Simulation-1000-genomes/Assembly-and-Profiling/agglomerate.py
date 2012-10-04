#!/usr/bin/env python


import sys

prefix=sys.argv[1]

count=0

currentFile=None

group=1

parity=0
linesPerSequence=2
maximum=int(sys.argv[2])
debug=False

for line in sys.stdin:
	
	if debug:
		print "Line "+str(parity)+"= "+line

	if parity!=0:
	
		if debug:
			print "Parity not 0, "+str(parity)

		currentFile.write(line)

		parity+=1

		if parity==linesPerSequence:

			if debug:
				print "Reset parity"

			parity=0
		
			if count==maximum:
				print "Closing file, with "+str(count)+" sequences"
				count=0
				currentFile.close()
				currentFile=None
				group+=1


		continue
	

	if count==0:
		file=prefix+str(group)+".fasta"

		print "Opening "+file

		currentFile=open(file,"w")
		

	currentFile.write(line)

	if count>=maximum:
		print "Count: "+str(count)

	count+=1

	parity+=1


if currentFile!=None:
	currentFile.close()
		
