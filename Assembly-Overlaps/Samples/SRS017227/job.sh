#!/bin/bash
#PBS -N SRS017227-overlaps
#PBS -o SRS017227-overlaps.stdout
#PBS -e SRS017227-overlaps.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename SRS017227-overlaps \
Ray \
-k 31 \
-o SRS017227-overlaps \
-search Assemblies
-s Reads/SRR041433.fastq.gz \
-p Reads/SRR059860_1.fastq.gz Reads/SRR059860_2.fastq.gz \
-p Reads/SRR059861_1.fastq.gz Reads/SRR059861_2.fastq.gz \
