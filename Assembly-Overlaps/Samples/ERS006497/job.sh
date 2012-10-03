#!/bin/bash
#PBS -N ERS006497-overlaps
#PBS -o ERS006497-overlaps.stdout
#PBS -e ERS006497-overlaps.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename ERS006497-overlaps \
Ray \
-k 31 \
-o ERS006497-overlaps \
-search Assemblies \
-p Reads/ERR011099_1.fastq.gz Reads/ERR011099_2.fastq.gz \
-p Reads/ERR011100_1.fastq.gz Reads/ERR011100_2.fastq.gz \
-p Reads/ERR011101_1.fastq.gz Reads/ERR011101_2.fastq.gz \
-p Reads/ERR011102_1.fastq.gz Reads/ERR011102_2.fastq.gz \
-p Reads/ERR011103_1.fastq.gz Reads/ERR011103_2.fastq.gz \
-p Reads/ERR011104_1.fastq.gz Reads/ERR011104_2.fastq.gz \
