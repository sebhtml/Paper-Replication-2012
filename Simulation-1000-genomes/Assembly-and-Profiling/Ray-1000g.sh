#!/bin/bash
#PBS -N x1000g-Ray-2012-08-17.1
#PBS -o x1000g-Ray-2012-08-17.1.stdout
#PBS -e x1000g-Ray-2012-08-17.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=128:ppn=8

cd "${PBS_O_WORKDIR}"

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 1024 -output-filename x1000g-Ray-2012-08-17.1 Ray x1000g-Ray-2012-08-17.1.conf

mkdir logs
mv x1000g-Ray-2012-08-17.1.* logs
mv logs x1000g-Ray-2012-08-17.1

