#!/bin/bash
#$ -N VirtualSequencer-124
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_putida_GB_1_uid58735.fasta 0.0025 400 40 765619 100 Reads/984_1.fasta Reads/984_2.fasta &> Logs/984 &
VirtualNextGenSequencer Bacteria-Genomes/Methylacidiphilum_infernorum_V4_uid59161.fasta 0.0025 400 40 765231 100 Reads/985_1.fasta Reads/985_2.fasta &> Logs/985 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_equi_zooepidemicus_MGCS10565_uid59263.fasta 0.0025 400 40 764843 100 Reads/986_1.fasta Reads/986_2.fasta &> Logs/986 &
VirtualNextGenSequencer Bacteria-Genomes/Coxiella_burnetii_CbuG_Q212_uid58893.fasta 0.0025 400 40 764456 100 Reads/987_1.fasta Reads/987_2.fasta &> Logs/987 &
VirtualNextGenSequencer Bacteria-Genomes/Anaplasma_phagocytophilum_HZ_uid57951.fasta 0.0025 400 40 764069 100 Reads/988_1.fasta Reads/988_2.fasta &> Logs/988 &
VirtualNextGenSequencer Bacteria-Genomes/Chlorobium_luteolum_DSM_273_uid58175.fasta 0.0025 400 40 763683 100 Reads/989_1.fasta Reads/989_2.fasta &> Logs/989 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_MR_7_uid58343.fasta 0.0025 400 40 763298 100 Reads/990_1.fasta Reads/990_2.fasta &> Logs/990 &
VirtualNextGenSequencer Bacteria-Genomes/Methylomicrobium_alcaliphilum_uid77119.fasta 0.0025 400 40 762913 100 Reads/991_1.fasta Reads/991_2.fasta &> Logs/991 &

wait
