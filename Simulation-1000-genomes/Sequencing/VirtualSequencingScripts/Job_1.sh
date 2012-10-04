#!/bin/bash
#$ -N VirtualSequencer-1
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pseudogulbenkiania_NH8B_uid73423.fasta 0.0025 400 40 24028734 100 Reads/0_1.fasta Reads/0_2.fasta &> Logs/0 &
VirtualNextGenSequencer Bacteria-Genomes/Methanosaeta_concilii_GP6_uid66207.fasta 0.0025 400 40 16990881 100 Reads/1_1.fasta Reads/1_2.fasta &> Logs/1 &
VirtualNextGenSequencer Bacteria-Genomes/Paenibacillus_polymyxa_SC2_uid59583.fasta 0.0025 400 40 13872996 100 Reads/2_1.fasta Reads/2_2.fasta &> Logs/2 &
VirtualNextGenSequencer Bacteria-Genomes/Myxococcus_fulvus_HW_1_uid68443.fasta 0.0025 400 40 12014367 100 Reads/3_1.fasta Reads/3_2.fasta &> Logs/3 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotomaculum_carboxydivorans_CO_1_SRB_uid67317.fasta 0.0025 400 40 10745977 100 Reads/4_1.fasta Reads/4_2.fasta &> Logs/4 &
VirtualNextGenSequencer Bacteria-Genomes/Xylella_fastidiosa_M12_uid58763.fasta 0.0025 400 40 9809690 100 Reads/5_1.fasta Reads/5_2.fasta &> Logs/5 &
VirtualNextGenSequencer Bacteria-Genomes/Ruminococcus_albus_7_uid51721.fasta 0.0025 400 40 9082008 100 Reads/6_1.fasta Reads/6_2.fasta &> Logs/6 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_anthracis_A0248_uid59385.fasta 0.0025 400 40 8495440 100 Reads/7_1.fasta Reads/7_2.fasta &> Logs/7 &

wait
