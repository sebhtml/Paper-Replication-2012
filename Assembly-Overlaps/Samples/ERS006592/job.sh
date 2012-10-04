#!/bin/bash
#PBS -N ERS006592-overlaps-2012-10-03.1
#PBS -o ERS006592-overlaps-2012-10-03.1.stdout
#PBS -e ERS006592-overlaps-2012-10-03.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename ERS006592-overlaps-2012-10-03.1 \
Ray \
-k 31 \
-o RayOutput \
-search Assemblies \
-p Reads/ERR011192_1.fastq.gz Reads/ERR011192_2.fastq.gz \
-p Reads/ERR011193_1.fastq.gz Reads/ERR011193_2.fastq.gz \
-one-color-per-file

mv ERS006592-overlaps-2012-10-03.1.* RayOutput

