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

	evenObjects.append([tokens[0],int(tokens[1]]))

for line in open(staggeredCopiesFile):
	if line[0]=="#":
		continue

	tokens=line.split("\t")

	staggeredObjects.append([tokens[0],int(tokens[1]]))

for line in open(targetsFile):
	if line[0]=="#":
		continue

	tokens=line.split("\t")

	targets.append([tokens[0],int(tokens[1]),float(tokens[2]]))

evenSum=0.0
staggeredSum=0.0

count=len(targets)

i=0
while i<count:
	evenCount=evenObjects[i][1]
	staggeredCount=staggeredObjects[i][1]
	copiesPerGenome=targets[i][1]
	genomeLength=targets[i][2]
	evenValue=evenCount/copiesPerGenome*genomeLength
	staggeredValue=staggeredCount/copiesPerGenome*genomeLength

	evenSum+=evenValue

	staggeredSum+=staggeredValue

	i+=1

i=0

while i<count:
	evenCount=evenObjects[i][1]
	staggeredCount=staggeredObjects[i][1]
	copiesPerGenome=targets[i][1]
	genomeLength=targets[i][2]
	evenValue=evenCount/copiesPerGenome*genomeLength
	staggeredValue=staggeredCount/copiesPerGenome*genomeLength

	evenRatio=evenValue/evenSum
	staggeredRatio=staggeredValue/staggeredSum

	name=targets[i][0]

	print name+" & "+str(evenRatio)+" & "+str(staggeredRatio)

	i+=1


