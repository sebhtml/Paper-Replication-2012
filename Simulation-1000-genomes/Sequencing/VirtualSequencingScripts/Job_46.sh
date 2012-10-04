#!/bin/bash
#$ -N VirtualSequencer-46
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Teredinibacter_turnerae_T7901_uid59267.fasta 0.0025 400 40 1264670 100 Reads/360_1.fasta Reads/360_2.fasta &> Logs/360 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_brassicacearum_NFM421_uid66303.fasta 0.0025 400 40 1262922 100 Reads/361_1.fasta Reads/361_2.fasta &> Logs/361 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_S88_uid62979.fasta 0.0025 400 40 1261181 100 Reads/362_1.fasta Reads/362_2.fasta &> Logs/362 &
VirtualNextGenSequencer Bacteria-Genomes/Pectobacterium_wasabiae_WPP163_uid41297.fasta 0.0025 400 40 1259448 100 Reads/363_1.fasta Reads/363_2.fasta &> Logs/363 &
VirtualNextGenSequencer Bacteria-Genomes/Haloarcula_hispanica_ATCC_33960_uid72475.fasta 0.0025 400 40 1257721 100 Reads/364_1.fasta Reads/364_2.fasta &> Logs/364 &
VirtualNextGenSequencer Bacteria-Genomes/Nitrosomonas_eutropha_C91_uid58363.fasta 0.0025 400 40 1256002 100 Reads/365_1.fasta Reads/365_2.fasta &> Logs/365 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylothermus_marinus_F1_uid58719.fasta 0.0025 400 40 1254290 100 Reads/366_1.fasta Reads/366_2.fasta &> Logs/366 &
VirtualNextGenSequencer Bacteria-Genomes/Thermanaerovibrio_acidaminovorans_DSM_6589_uid41925.fasta 0.0025 400 40 1252584 100 Reads/367_1.fasta Reads/367_2.fasta &> Logs/367 &

wait
