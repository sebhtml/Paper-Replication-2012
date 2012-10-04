#!/bin/bash
#$ -N x1000g-Ray-2012-08-11.1
#$ -P nne-790-ab
#$ -l h_rt=30:00:00
#$ -pe default 1024
#$ -cwd
#$ -R y

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 1024 -output-filename x1000g-Ray-2012-08-11.1 Ray 1000g-Ray-2012-08-11.1.conf



