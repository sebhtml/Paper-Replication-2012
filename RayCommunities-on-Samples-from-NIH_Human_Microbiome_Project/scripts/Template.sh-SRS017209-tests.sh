#PBS -S /bin/bash
#PBS -N SRS017209.Assembly-2012-08-14.1-no-bloom
#PBS -o SRS017209.Assembly-2012-08-14.1-no-bloom.stdout
#PBS -e SRS017209.Assembly-2012-08-14.1-no-bloom.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=8:ppn=8

cd "${PBS_O_WORKDIR}"

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

mpiexec -n 64 -output-filename SRS017209.Assembly-2012-08-14.1-no-bloom \
 Ray SRS017209.Assembly-2012-08-14.1-no-bloom.conf



