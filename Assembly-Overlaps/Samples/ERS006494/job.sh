#!/bin/bash
#PBS -N ERS006494-overlaps
#PBS -o ERS006494-overlaps.stdout
#PBS -e ERS006494-overlaps.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename ERS006494-overlaps \
Ray \
-k 31 \
-o ERS006494-overlaps \
-search Assemblies \
-p Reads/ERR011117_1.fastq.gz Reads/ERR011117_2.fastq.gz \
-p Reads/ERR011118_1.fastq.gz Reads/ERR011118_2.fastq.gz \
-p Reads/ERR011119_1.fastq.gz Reads/ERR011119_2.fastq.gz \
-p Reads/ERR011120_1.fastq.gz Reads/ERR011120_2.fastq.gz \
-p Reads/ERR011121_1.fastq.gz Reads/ERR011121_2.fastq.gz \
-p Reads/ERR011122_1.fastq.gz Reads/ERR011122_2.fastq.gz \
-p Reads/ERR011123_1.fastq.gz Reads/ERR011123_2.fastq.gz \

