#!/bin/bash
#$ -N VirtualSequencer-76
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Variovorax_paradoxus_EPS_uid62107.fasta 0.0025 400 40 980153 100 Reads/600_1.fasta Reads/600_2.fasta &> Logs/600 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_M1_GAS_uid57845.fasta 0.0025 400 40 979338 100 Reads/601_1.fasta Reads/601_2.fasta &> Logs/601 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_Newman_uid58839.fasta 0.0025 400 40 978526 100 Reads/602_1.fasta Reads/602_2.fasta &> Logs/602 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_populi_BJ001_uid58937.fasta 0.0025 400 40 977715 100 Reads/603_1.fasta Reads/603_2.fasta &> Logs/603 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfurimonas_autotrophica_DSM_16294_uid53043.fasta 0.0025 400 40 976907 100 Reads/604_1.fasta Reads/604_2.fasta &> Logs/604 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Schwarzengrund_CVM19633_uid58915.fasta 0.0025 400 40 976101 100 Reads/605_1.fasta Reads/605_2.fasta &> Logs/605 &
VirtualNextGenSequencer Bacteria-Genomes/Caldicellulosiruptor_saccharolyticus_DSM_8903_uid58289.fasta 0.0025 400 40 975296 100 Reads/606_1.fasta Reads/606_2.fasta &> Logs/606 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_melitensis_biovar_Abortus_2308_uid62937.fasta 0.0025 400 40 974494 100 Reads/607_1.fasta Reads/607_2.fasta &> Logs/607 &

wait
