#!/bin/bash

for i in $(find .|grep SequenceAbund|grep Bac)
do 
	xsltproc SequenceAbundances-to-tsv.xsl $i > $i.tsv
done
