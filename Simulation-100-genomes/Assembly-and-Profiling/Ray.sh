#!/bin/bash
#$ -N Ray-100.2012-05-26
#$ -P nne-790-ab
#$ -l h_rt=48:00:00
#$ -pe default 128
#$ -cwd

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

GreenRay 31 Sample-100 128 Ray-100.2012-05-26
