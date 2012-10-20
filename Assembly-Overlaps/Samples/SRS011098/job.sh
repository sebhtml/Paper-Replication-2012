#!/bin/bash
#PBS -N SRS011098-overlaps-2012-10-14.1
#PBS -o SRS011098-overlaps-2012-10-14.1.stdout
#PBS -e SRS011098-overlaps-2012-10-14.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename SRS011098-overlaps-2012-10-14.1 \
Ray \
-k 31 \
-o SRS011098-overlaps-2012-10-14.1 \
-search Assemblies.500
-s Reads/SRR055676.fastq.gz \
-s Reads/SRR055756.fastq.gz \
-s Reads/SRR056894.fastq.gz \
-s Reads/SRR056977.fastq.gz \
-s Reads/SRR059326.fastq.gz \
-s Reads/SRR059327.fastq.gz \
-p Reads/SRR062051_1.fastq.gz Reads/SRR062051_2.fastq.gz \
-p Reads/SRR062052_1.fastq.gz Reads/SRR062052_2.fastq.gz \
-one-color-per-file

mv SRS011098-overlaps-2012-10-14.1.* SRS011098-overlaps-2012-10-14.1
