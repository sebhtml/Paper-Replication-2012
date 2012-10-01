#!/usr/bin/env python
# encoding: utf-8
# author: Sébastien Boisvert

# keep only pairs with read with less than 10 Ns
# this program takes its input from stdin

import sys
maximumN=int(sys.argv[1])

objects=[]

def count(sequence,symbol):
	i=0
	observations=0
	length=len(sequence)

	while i<length:
		if sequence[i]==symbol:
			observations+=1
		i+=1
	
	return observations


for line in sys.stdin:
	objects.append(line.strip())

	if len(objects)==8:
		seq1=objects[1]
		seq2=objects[5]

		if count(seq1,'N') <= maximumN and count(seq2,'N') <= maximumN:
			for i in objects:
				print i
		objects=[]
