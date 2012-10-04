#!/bin/bash
#$ -N VirtualSequencer-63
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Oceanobacillus_iheyensis_HTE831_uid57867.fasta 0.0025 400 40 1077836 100 Reads/496_1.fasta Reads/496_2.fasta &> Logs/496 &
VirtualNextGenSequencer Bacteria-Genomes/Idiomarina_loihiensis_L2TR_uid58087.fasta 0.0025 400 40 1076753 100 Reads/497_1.fasta Reads/497_2.fasta &> Logs/497 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Chloracidobacterium_thermophilum_B_uid73587.fasta 0.0025 400 40 1075674 100 Reads/498_1.fasta Reads/498_2.fasta &> Logs/498 &
VirtualNextGenSequencer Bacteria-Genomes/Lacinutrix_5H_3_7_4_uid68067.fasta 0.0025 400 40 1074598 100 Reads/499_1.fasta Reads/499_2.fasta &> Logs/499 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_equi_zooepidemicus_uid59261.fasta 0.0025 400 40 1073525 100 Reads/500_1.fasta Reads/500_2.fasta &> Logs/500 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_adolescentis_ATCC_15703_uid58559.fasta 0.0025 400 40 1072455 100 Reads/501_1.fasta Reads/501_2.fasta &> Logs/501 &
VirtualNextGenSequencer Bacteria-Genomes/Aeropyrum_pernix_K1_uid57757.fasta 0.0025 400 40 1071388 100 Reads/502_1.fasta Reads/502_2.fasta &> Logs/502 &
VirtualNextGenSequencer Bacteria-Genomes/Legionella_longbeachae_NSW150_uid46099.fasta 0.0025 400 40 1070325 100 Reads/503_1.fasta Reads/503_2.fasta &> Logs/503 &

wait
