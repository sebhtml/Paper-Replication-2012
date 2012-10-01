#PBS -S /bin/bash
#PBS -N SRS016944-Ray-2012-09-08.1
#PBS -o SRS016944-Ray-2012-09-08.1.stdout
#PBS -e SRS016944-Ray-2012-09-08.1.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=8:ppn=8

cd $PBS_O_WORKDIR

echo "PBS_JOBID -> $PBS_JOBID"

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

SilverRay 31 SRS016944 64 SRS016944-Ray-2012-09-08.1


