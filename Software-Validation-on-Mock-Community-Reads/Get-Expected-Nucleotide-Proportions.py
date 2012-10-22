#!/usr/bin/env python

import sys

evenCopiesFile="Even.Expected.txt"
staggeredCopiesFile="Staggered.Expected.txt"
targetsFile="Objects.txt"

evenObjects=[]
staggeredObjects=[]
targets=[]

for line in open(evenCopiesFile):
	if line[0]=="#":
		continue

	tokens=line.split("\t")

	evenObjects.append([tokens[0],int(tokens[1])])

for line in open(staggeredCopiesFile):
	if line[0]=="#":
		continue

	tokens=line.split("\t")

	staggeredObjects.append([tokens[0],int(tokens[1])])

for line in open(targetsFile):
	if line[0]=="#":
		continue

	tokens=line.split("\t")

	targets.append([tokens[0],int(tokens[1]),float(tokens[2])])

evenSum=0.0
staggeredSum=0.0

count=len(targets)

i=0
while i<count:
	evenCount=evenObjects[i][1]
	staggeredCount=staggeredObjects[i][1]
	copiesPerGenome=targets[i][1]
	genomeLength=targets[i][2]
	evenValue=0
	staggeredValue=0
	if copiesPerGenome>0:
		evenValue=evenCount/copiesPerGenome*genomeLength
		staggeredValue=staggeredCount/copiesPerGenome*genomeLength

	evenSum+=evenValue

	staggeredSum+=staggeredValue

	i+=1

i=0

print '\documentclass{article}'
print "\\usepackage{lscape}"
print '\\begin{document}'
print '\\begin{landscape}'

print "\\begin{table}"
print "\\caption{Validation of Ray Communities using NIH Human Microbiome Project mock communities.}"
print "The mock communities were described in PAPER and the repository and accession numbers are available therein.\\\\"
print "\\label{TableMocks}"
print "\\begin{tabular}{lllllllllll}"
print '\hline'
print "Species & 16S& Genome &  \multicolumn{4}{c}{Even mixture} &  \multicolumn{4}{c}{Staggered mixture} \\\\"
print " &copies & length & \multicolumn{2}{c}{Expected} & \multicolumn{2}{c}{Actual} & \multicolumn{2}{c}{Expected} & \multicolumn{2}{c}{Actual}  \\\\"
print "       & per & (Mb) & 16S & nucleotide & Illumina & 454   & 16S copies & nucleotide & Illumina & 454    \\\\"
print " & genome &  & copies & proportion & & & copies & proportion\\\\"
print '\hline'

def renderForScreen(text):
	hunk=str(text)

	chunks=hunk.split(".")
	
	secondPart=chunks[1][0:2]

	while len(secondPart)<2:
		secondPart=secondPart+"0"

	return chunks[0]+"."+secondPart

while i<count:
	evenCount=evenObjects[i][1]
	staggeredCount=staggeredObjects[i][1]
	copiesPerGenome=targets[i][1]
	genomeLength=targets[i][2]

	evenValue=0
	staggeredValue=0
	if copiesPerGenome>0:
		evenValue=evenCount/copiesPerGenome*genomeLength
		staggeredValue=staggeredCount/copiesPerGenome*genomeLength

	evenRatio=evenValue/evenSum*100
	staggeredRatio=staggeredValue/staggeredSum*100

	evenRatio=renderForScreen(evenRatio)
	staggeredRatio=renderForScreen(staggeredRatio)

	name=targets[i][0].split()
	name=name[0]+" "+name[1]

	print "\\textit{"+name+"} & "+str(copiesPerGenome)+" & "+str(renderForScreen(genomeLength)),
	print " & "+str(evenCount)+" & "+str(evenRatio)+"\\% & && "+str(staggeredCount)+" & "+str(staggeredRatio)+"\\\\"

	i+=1

print '\hline'
print '\end{tabular}'
print '\end{table}'

print '\\end{landscape}'
print '\end{document}'
