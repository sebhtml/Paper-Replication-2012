#!/bin/bash
#$ -N VirtualSequencer-35
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_parasanguinis_ATCC_15912_uid49313.fasta 0.0025 400 40 1454285 100 Reads/272_1.fasta Reads/272_2.fasta &> Logs/272 &
VirtualNextGenSequencer Bacteria-Genomes/Oscillibacter_valericigenes_uid73895.fasta 0.0025 400 40 1451629 100 Reads/273_1.fasta Reads/273_2.fasta &> Logs/273 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_TX077308_uid68321.fasta 0.0025 400 40 1448987 100 Reads/274_1.fasta Reads/274_2.fasta &> Logs/274 &
VirtualNextGenSequencer Bacteria-Genomes/Blattabacterium__Periplaneta_americana__BPLAN_uid41287.fasta 0.0025 400 40 1446360 100 Reads/275_1.fasta Reads/275_2.fasta &> Logs/275 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_dentium_Bd1_uid43091.fasta 0.0025 400 40 1443747 100 Reads/276_1.fasta Reads/276_2.fasta &> Logs/276 &
VirtualNextGenSequencer Bacteria-Genomes/Listeria_innocua_Clip11262_uid61567.fasta 0.0025 400 40 1441148 100 Reads/277_1.fasta Reads/277_2.fasta &> Logs/277 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_amyloliquefaciens_DSM_7_uid53535.fasta 0.0025 400 40 1438563 100 Reads/278_1.fasta Reads/278_2.fasta &> Logs/278 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_licheniformis_ATCC_14580_uid58199.fasta 0.0025 400 40 1435992 100 Reads/279_1.fasta Reads/279_2.fasta &> Logs/279 &

wait
