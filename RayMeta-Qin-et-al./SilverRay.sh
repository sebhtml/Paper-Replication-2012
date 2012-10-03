#!/bin/bash
#PBS -N __SAMPLE__-Ray-test-run
#PBS -A nne-790-ab
#PBS -l walltime=15:00:00
#PBS -l nodes=4:ppn=8
#PBS -q default
#PBS -o __SAMPLE__-Ray-test-run.stdout
#PBS -e __SAMPLE__-Ray-test-run.stderr
cd $PBS_O_WORKDIR


source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

SilverRay 31 __SAMPLE__ 32 __SAMPLE__-Ray-test-run


