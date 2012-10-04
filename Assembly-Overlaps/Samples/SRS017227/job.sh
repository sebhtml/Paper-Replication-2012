#!/bin/bash
#PBS -N SRS017227-overlaps-2012-10-03.1
#PBS -o SRS017227-overlaps-2012-10-03.1.stdout
#PBS -e SRS017227-overlaps-2012-10-03.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename SRS017227-overlaps-2012-10-03.1 \
Ray \
-k 31 \
-o RayOutput \
-search Assemblies
-s Reads/SRR041433.fastq.gz \
-p Reads/SRR059860_1.fastq.gz Reads/SRR059860_2.fastq.gz \
-p Reads/SRR059861_1.fastq.gz Reads/SRR059861_2.fastq.gz \
-one-color-per-file

mv SRS017227-overlaps-2012-10-03.1.* RayOutput
