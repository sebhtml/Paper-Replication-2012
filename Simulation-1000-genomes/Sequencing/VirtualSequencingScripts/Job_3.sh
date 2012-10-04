#!/bin/bash
#$ -N VirtualSequencer-3
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Bacillus_clausii_KSM_K16_uid58237.fasta 0.0025 400 40 5827824 100 Reads/16_1.fasta Reads/16_2.fasta &> Logs/16 &
VirtualNextGenSequencer Bacteria-Genomes/Thermocrinis_albus_DSM_14484_uid46231.fasta 0.0025 400 40 5663627 100 Reads/17_1.fasta Reads/17_2.fasta &> Logs/17 &
VirtualNextGenSequencer Bacteria-Genomes/Glaciecola_nitratireducens_FR1064_uid73759.fasta 0.0025 400 40 5512570 100 Reads/18_1.fasta Reads/18_2.fasta &> Logs/18 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_glutamicum_R_uid58897.fasta 0.0025 400 40 5372988 100 Reads/19_1.fasta Reads/19_2.fasta &> Logs/19 &
VirtualNextGenSequencer Bacteria-Genomes/Acinetobacter_baumannii_ACICU_uid58765.fasta 0.0025 400 40 5243500 100 Reads/20_1.fasta Reads/20_2.fasta &> Logs/20 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoplasma_acidophilum_DSM_1728_uid61573.fasta 0.0025 400 40 5122943 100 Reads/21_1.fasta Reads/21_2.fasta &> Logs/21 &
VirtualNextGenSequencer Bacteria-Genomes/Dichelobacter_nodosus_VCS1703A_uid57643.fasta 0.0025 400 40 5010337 100 Reads/22_1.fasta Reads/22_2.fasta &> Logs/22 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_aeruginosa_UCBPP_PA14_uid57977.fasta 0.0025 400 40 4904845 100 Reads/23_1.fasta Reads/23_2.fasta &> Logs/23 &

wait
