#!/bin/bash
#$ -N VirtualSequencer-12
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_thermophilus_LMG_18311_uid58219.fasta 0.0025 400 40 2547041 100 Reads/88_1.fasta Reads/88_2.fasta &> Logs/88 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_jejuni_81116_uid58771.fasta 0.0025 400 40 2532851 100 Reads/89_1.fasta Reads/89_2.fasta &> Logs/89 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O26_H11_11368_uid41021.fasta 0.0025 400 40 2518896 100 Reads/90_1.fasta Reads/90_2.fasta &> Logs/90 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_SJM180_uid53541.fasta 0.0025 400 40 2505169 100 Reads/91_1.fasta Reads/91_2.fasta &> Logs/91 &
VirtualNextGenSequencer Bacteria-Genomes/Nitrobacter_hamburgensis_X14_uid58293.fasta 0.0025 400 40 2491664 100 Reads/92_1.fasta Reads/92_2.fasta &> Logs/92 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridiales_genomosp__BVAB3_UPII9_5_uid46219.fasta 0.0025 400 40 2478375 100 Reads/93_1.fasta Reads/93_2.fasta &> Logs/93 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_FRC_32_uid58543.fasta 0.0025 400 40 2465296 100 Reads/94_1.fasta Reads/94_2.fasta &> Logs/94 &
VirtualNextGenSequencer Bacteria-Genomes/Alteromonas_macleodii__Deep_ecotype__uid58251.fasta 0.0025 400 40 2452422 100 Reads/95_1.fasta Reads/95_2.fasta &> Logs/95 &

wait
