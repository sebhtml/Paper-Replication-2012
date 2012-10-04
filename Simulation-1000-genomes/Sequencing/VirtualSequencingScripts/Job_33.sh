#!/bin/bash
#$ -N VirtualSequencer-33
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_curvus_525_92_uid58669.fasta 0.0025 400 40 1498871 100 Reads/256_1.fasta Reads/256_2.fasta &> Logs/256 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfolobus_islandicus_M_14_25_uid58849.fasta 0.0025 400 40 1495964 100 Reads/257_1.fasta Reads/257_2.fasta &> Logs/257 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_perfringens_SM101_uid58117.fasta 0.0025 400 40 1493073 100 Reads/258_1.fasta Reads/258_2.fasta &> Logs/258 &
VirtualNextGenSequencer Bacteria-Genomes/Arthrobacter_aurescens_TC1_uid58109.fasta 0.0025 400 40 1490199 100 Reads/259_1.fasta Reads/259_2.fasta &> Logs/259 &
VirtualNextGenSequencer Bacteria-Genomes/Stenotrophomonas_maltophilia_R551_3_uid58657.fasta 0.0025 400 40 1487341 100 Reads/260_1.fasta Reads/260_2.fasta &> Logs/260 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Solibacter_usitatus_Ellin6076_uid58139.fasta 0.0025 400 40 1484500 100 Reads/261_1.fasta Reads/261_2.fasta &> Logs/261 &
VirtualNextGenSequencer Bacteria-Genomes/Verminephrobacter_eiseniae_EF01_2_uid58675.fasta 0.0025 400 40 1481675 100 Reads/262_1.fasta Reads/262_2.fasta &> Logs/262 &
VirtualNextGenSequencer Bacteria-Genomes/Hippea_maritima_DSM_10411_uid65267.fasta 0.0025 400 40 1478866 100 Reads/263_1.fasta Reads/263_2.fasta &> Logs/263 &

wait
