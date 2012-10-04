#!/bin/bash
#$ -N VirtualSequencer-104
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Halobacterium_salinarum_R1_uid61571.fasta 0.0025 400 40 836573 100 Reads/824_1.fasta Reads/824_2.fasta &> Logs/824 &
VirtualNextGenSequencer Bacteria-Genomes/Kosmotoga_olearia_TBF_19_5_1_uid59205.fasta 0.0025 400 40 836067 100 Reads/825_1.fasta Reads/825_2.fasta &> Logs/825 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_agalactiae_A909_uid57935.fasta 0.0025 400 40 835561 100 Reads/826_1.fasta Reads/826_2.fasta &> Logs/826 &
VirtualNextGenSequencer Bacteria-Genomes/Nakamurella_multipartita_DSM_44233_uid59221.fasta 0.0025 400 40 835056 100 Reads/827_1.fasta Reads/827_2.fasta &> Logs/827 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_55989_uid59383.fasta 0.0025 400 40 834552 100 Reads/828_1.fasta Reads/828_2.fasta &> Logs/828 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_F_Langeland_uid58929.fasta 0.0025 400 40 834050 100 Reads/829_1.fasta Reads/829_2.fasta &> Logs/829 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_glutamicum_ATCC_13032_uid57905.fasta 0.0025 400 40 833548 100 Reads/830_1.fasta Reads/830_2.fasta &> Logs/830 &
VirtualNextGenSequencer Bacteria-Genomes/Acidaminococcus_fermentans_DSM_20731_uid43471.fasta 0.0025 400 40 833046 100 Reads/831_1.fasta Reads/831_2.fasta &> Logs/831 &

wait
