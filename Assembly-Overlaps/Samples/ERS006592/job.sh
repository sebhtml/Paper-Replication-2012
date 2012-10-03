#!/bin/bash
#PBS -N ERS006592-overlaps
#PBS -o ERS006592-overlaps.stdout
#PBS -e ERS006592-overlaps.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename ERS006592-overlaps \
Ray \
-k 31 \
-o ERS006592-overlaps \
-search Assemblies \
-p Reads/ERR011192_1.fastq.gz Reads/ERR011192_2.fastq.gz \
-p Reads/ERR011193_1.fastq.gz Reads/ERR011193_2.fastq.gz \
