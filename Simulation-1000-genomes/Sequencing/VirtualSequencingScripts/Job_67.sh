#!/bin/bash
#$ -N VirtualSequencer-67
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Vibrio_Ex25_uid41601.fasta 0.0025 400 40 1044728 100 Reads/528_1.fasta Reads/528_2.fasta &> Logs/528 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_lentocellum_DSM_5427_uid49117.fasta 0.0025 400 40 1043742 100 Reads/529_1.fasta Reads/529_2.fasta &> Logs/529 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_mitis_B6_uid46097.fasta 0.0025 400 40 1042758 100 Reads/530_1.fasta Reads/530_2.fasta &> Logs/530 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_reuteri_DSM_20016_uid58471.fasta 0.0025 400 40 1041778 100 Reads/531_1.fasta Reads/531_2.fasta &> Logs/531 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pseudopneumoniae_IS7493_uid71153.fasta 0.0025 400 40 1040800 100 Reads/532_1.fasta Reads/532_2.fasta &> Logs/532 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Paratyphi_A_AKU_12601_uid59269.fasta 0.0025 400 40 1039825 100 Reads/533_1.fasta Reads/533_2.fasta &> Logs/533 &
VirtualNextGenSequencer Bacteria-Genomes/Leptotrichia_buccalis_C_1013_b_uid59211.fasta 0.0025 400 40 1038853 100 Reads/534_1.fasta Reads/534_2.fasta &> Logs/534 &
VirtualNextGenSequencer Bacteria-Genomes/Halobacterium_NRC_1_uid57769.fasta 0.0025 400 40 1037883 100 Reads/535_1.fasta Reads/535_2.fasta &> Logs/535 &

wait
