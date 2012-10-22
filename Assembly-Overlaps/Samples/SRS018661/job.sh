#!/bin/bash
#PBS -N SRS018661-overlaps-2012-10-19.1
#PBS -o SRS018661-overlaps-2012-10-19.1.stdout
#PBS -e SRS018661-overlaps-2012-10-19.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=12:ppn=8
cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 96 \
-output-filename SRS018661-overlaps-2012-10-19.1 \
Ray \
-k 31 \
-o SRS018661-overlaps-2012-10-19.1 \
-search Assemblies.500 \
-p Reads/SRR061563_1.fastq.gz Reads/SRR061563_2.fastq.gz \
-p Reads/SRR061564_1.fastq.gz Reads/SRR061564_2.fastq.gz \
-p Reads/SRR346659_1.fastq.gz Reads/SRR346659_2.fastq.gz \
-p Reads/SRR346682_1.fastq.gz Reads/SRR346682_2.fastq.gz \
-p Reads/SRR346687_1.fastq.gz Reads/SRR346687_2.fastq.gz \
-one-color-per-file

mv SRS018661-overlaps-2012-10-19.1.* SRS018661-overlaps-2012-10-19.1
