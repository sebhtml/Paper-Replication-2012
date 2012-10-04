#!/bin/bash
#$ -N VirtualSequencer-54
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Ureaplasma_parvum_serovar_3_ATCC_700970_uid57711.fasta 0.0025 400 40 1165565 100 Reads/424_1.fasta Reads/424_2.fasta &> Logs/424 &
VirtualNextGenSequencer Bacteria-Genomes/Sphingobium_japonicum_UT26S_uid47077.fasta 0.0025 400 40 1164196 100 Reads/425_1.fasta Reads/425_2.fasta &> Logs/425 &
VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_eutropha_JMP134_uid58047.fasta 0.0025 400 40 1162832 100 Reads/426_1.fasta Reads/426_2.fasta &> Logs/426 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_paraluiscuniculi_Cuniculi_A_uid68447.fasta 0.0025 400 40 1161473 100 Reads/427_1.fasta Reads/427_2.fasta &> Logs/427 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_70585_uid59125.fasta 0.0025 400 40 1160118 100 Reads/428_1.fasta Reads/428_2.fasta &> Logs/428 &
VirtualNextGenSequencer Bacteria-Genomes/Nitratifractor_salsuginis_DSM_16511_uid62183.fasta 0.0025 400 40 1158768 100 Reads/429_1.fasta Reads/429_2.fasta &> Logs/429 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_novyi_NT_uid58643.fasta 0.0025 400 40 1157423 100 Reads/430_1.fasta Reads/430_2.fasta &> Logs/430 &
VirtualNextGenSequencer Bacteria-Genomes/Xenorhabdus_nematophila_ATCC_19061_uid49133.fasta 0.0025 400 40 1156083 100 Reads/431_1.fasta Reads/431_2.fasta &> Logs/431 &

wait
