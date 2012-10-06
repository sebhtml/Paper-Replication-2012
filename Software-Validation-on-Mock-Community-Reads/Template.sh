#!/bin/bash
#PBS -N __SAMPLE__.Ray-Communities-2012-10-05.3
#PBS -o __SAMPLE__.Ray-Communities-2012-10-05.3.stdout
#PBS -e __SAMPLE__.Ray-Communities-2012-10-05.3.stderr
#PBS -A nne-790-ab
#PBS -l walltime=48:00:00
#PBS -l nodes=4:ppn=8
cd $PBS_O_WORKDIR

#. /mnt/scratch_mp2/corbeil/corbeil_group/software/NGS-Pipelines/LoadModules.sh
. /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

#root=/mnt/scratch_mp2/corbeil/corbeil_group/genomes/
root=/rap/nne-790-ab/genomes/

mpiexec -n 48 \
-bynode \
-output-filename __SAMPLE__.Ray-Communities-2012-10-05.3 \
Ray \
 -o \
 __SAMPLE__.Ray-Communities-2012-10-05.3 \
 -k \
 31 \
 -s __SAMPLE__.fastq.gz \
  -search \
 $root/EMBL_CDS+GO/EMBL_CDS_Sequences \
 -gene-ontology \
 $root/EMBL_CDS+GO/000-Ontologies.txt \
 $root/EMBL_CDS+GO/000-Annotations.txt \
 -search \
 $root/RayKmerSearchStuff/last-build/ARDB \
 -search \
 $root/RayKmerSearchStuff/last-build/Bacteria-Genomes \
 -search \
 $root/RayKmerSearchStuff/last-build/HumanChromosomes \
 -search \
 $root/RayKmerSearchStuff/last-build/NCBI-Bacteria_DRAFT \
 -search \
 $root/RayKmerSearchStuff/last-build/Viruses-Genomes \
 -with-taxonomy \
 $root/taxonomy/last-build/Genome-to-Taxon.tsv \
 $root/taxonomy/last-build/TreeOfLife-Edges.tsv \
 $root/taxonomy/last-build/Taxon-Names.tsv


