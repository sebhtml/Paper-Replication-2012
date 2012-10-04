#!/bin/bash
#$ -N VirtualSequencer-118
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Clostridium_difficile_CD196_uid41017.fasta 0.0025 400 40 784985 100 Reads/936_1.fasta Reads/936_2.fasta &> Logs/936 &
VirtualNextGenSequencer Bacteria-Genomes/Alicycliphilus_denitrificans_BC_uid49953.fasta 0.0025 400 40 784566 100 Reads/937_1.fasta Reads/937_2.fasta &> Logs/937 &
VirtualNextGenSequencer Bacteria-Genomes/Acidianus_hospitalis_W1_uid66875.fasta 0.0025 400 40 784148 100 Reads/938_1.fasta Reads/938_2.fasta &> Logs/938 &
VirtualNextGenSequencer Bacteria-Genomes/Fervidobacterium_nodosum_Rt17_B1_uid58625.fasta 0.0025 400 40 783731 100 Reads/939_1.fasta Reads/939_2.fasta &> Logs/939 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_leprae_TN_uid57697.fasta 0.0025 400 40 783314 100 Reads/940_1.fasta Reads/940_2.fasta &> Logs/940 &
VirtualNextGenSequencer Bacteria-Genomes/Tropheryma_whipplei_Twist_uid57705.fasta 0.0025 400 40 782898 100 Reads/941_1.fasta Reads/941_2.fasta &> Logs/941 &
VirtualNextGenSequencer Bacteria-Genomes/Paracoccus_denitrificans_PD1222_uid58187.fasta 0.0025 400 40 782483 100 Reads/942_1.fasta Reads/942_2.fasta &> Logs/942 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_vulgaris__Miyazaki_F__uid59089.fasta 0.0025 400 40 782069 100 Reads/943_1.fasta Reads/943_2.fasta &> Logs/943 &

wait
