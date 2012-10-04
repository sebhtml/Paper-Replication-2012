#!/bin/bash
#$ -N VirtualSequencer-66
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_CCMP1375_uid57995.fasta 0.0025 400 40 1052718 100 Reads/520_1.fasta Reads/520_2.fasta &> Logs/520 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_JH1_uid58457.fasta 0.0025 400 40 1051709 100 Reads/521_1.fasta Reads/521_2.fasta &> Logs/521 &
VirtualNextGenSequencer Bacteria-Genomes/Ferroglobus_placidus_DSM_10642_uid40863.fasta 0.0025 400 40 1050703 100 Reads/522_1.fasta Reads/522_2.fasta &> Logs/522 &
VirtualNextGenSequencer Bacteria-Genomes/Acidovorax_JS42_uid58427.fasta 0.0025 400 40 1049700 100 Reads/523_1.fasta Reads/523_2.fasta &> Logs/523 &
VirtualNextGenSequencer Bacteria-Genomes/Dehalococcoides_BAV1_uid58477.fasta 0.0025 400 40 1048700 100 Reads/524_1.fasta Reads/524_2.fasta &> Logs/524 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_fulva_12_X_uid67351.fasta 0.0025 400 40 1047703 100 Reads/525_1.fasta Reads/525_2.fasta &> Logs/525 &
VirtualNextGenSequencer Bacteria-Genomes/Methanocaldococcus_fervens_AG86_uid59347.fasta 0.0025 400 40 1046708 100 Reads/526_1.fasta Reads/526_2.fasta &> Logs/526 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_uraniireducens_Rf4_uid58475.fasta 0.0025 400 40 1045716 100 Reads/527_1.fasta Reads/527_2.fasta &> Logs/527 &

wait
