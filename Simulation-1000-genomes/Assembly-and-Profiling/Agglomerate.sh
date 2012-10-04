#!/bin/bash
#$ -N MakeFlowCell
#$ -P nne-790-ab
#$ -l h_rt=16:00:00
#$ -pe default 8
#$ -cwd

(
for i in $(seq 0 999)
do
	cat Reads/$i"_1.fasta"
done

cat Reads/H_1.fasta
) \
| ./agglomerate.py FlowCell/Sample_X_LaneX_R1_ 8000000 &

(
for i in $(seq 0 999)
do
	cat Reads/$i"_2.fasta"
done

cat Reads/H_2.fasta
) \
| ./agglomerate.py FlowCell/Sample_X_LaneX_R2_ 8000000 &


wait


