#!/bin/bash

minimumLength=500

for i in $(cat ../SampleList.txt)
do
	echo "Sample $i"

	mkdir $i/Assemblies.500

	for j in $(ls $i/Assemblies)
	do
		echo "Set $j"

		./filter-contigs.py $i/Assemblies/$j $minimumLength $i/Assemblies.500/$j
	done
done
