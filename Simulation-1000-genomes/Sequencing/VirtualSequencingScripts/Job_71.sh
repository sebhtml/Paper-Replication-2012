#!/bin/bash
#$ -N VirtualSequencer-71
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Treponema_brennaborense_DSM_12168_uid66607.fasta 0.0025 400 40 1014494 100 Reads/560_1.fasta Reads/560_2.fasta &> Logs/560 &
VirtualNextGenSequencer Bacteria-Genomes/Serratia_AS9_uid67313.fasta 0.0025 400 40 1013591 100 Reads/561_1.fasta Reads/561_2.fasta &> Logs/561 &
VirtualNextGenSequencer Bacteria-Genomes/Klebsiella_pneumoniae_MGH_78578_uid57619.fasta 0.0025 400 40 1012690 100 Reads/562_1.fasta Reads/562_2.fasta &> Logs/562 &
VirtualNextGenSequencer Bacteria-Genomes/Nitrobacter_winogradskyi_Nb_255_uid58295.fasta 0.0025 400 40 1011792 100 Reads/563_1.fasta Reads/563_2.fasta &> Logs/563 &
VirtualNextGenSequencer Bacteria-Genomes/Polynucleobacter_necessarius_STIR1_uid58967.fasta 0.0025 400 40 1010896 100 Reads/564_1.fasta Reads/564_2.fasta &> Logs/564 &
VirtualNextGenSequencer Bacteria-Genomes/Acidobacterium_MP5ACTX9_uid50551.fasta 0.0025 400 40 1010003 100 Reads/565_1.fasta Reads/565_2.fasta &> Logs/565 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_elongatus_PCC_6301_uid58235.fasta 0.0025 400 40 1009112 100 Reads/566_1.fasta Reads/566_2.fasta &> Logs/566 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_axonopodis_citrumelo_F1_uid73179.fasta 0.0025 400 40 1008223 100 Reads/567_1.fasta Reads/567_2.fasta &> Logs/567 &

wait
