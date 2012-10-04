#!/bin/bash
#$ -N VirtualSequencer-57
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methanothermococcus_okinawensis_IH1_uid51535.fasta 0.0025 400 40 1133986 100 Reads/448_1.fasta Reads/448_2.fasta &> Logs/448 &
VirtualNextGenSequencer Bacteria-Genomes/Wolbachia_endosymbiont_of_Culex_quinquefasciatus_Pel_uid61645.fasta 0.0025 400 40 1132725 100 Reads/449_1.fasta Reads/449_2.fasta &> Logs/449 &
VirtualNextGenSequencer Bacteria-Genomes/Actinobacillus_pleuropneumoniae_serovar_7_AP76_uid59231.fasta 0.0025 400 40 1131469 100 Reads/450_1.fasta Reads/450_2.fasta &> Logs/450 &
VirtualNextGenSequencer Bacteria-Genomes/Dehalococcoides_CBDB1_uid58413.fasta 0.0025 400 40 1130217 100 Reads/451_1.fasta Reads/451_2.fasta &> Logs/451 &
VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_influenzae_F3047_uid62097.fasta 0.0025 400 40 1128968 100 Reads/452_1.fasta Reads/452_2.fasta &> Logs/452 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_azotonutricium_ZAS_9_uid67365.fasta 0.0025 400 40 1127724 100 Reads/453_1.fasta Reads/453_2.fasta &> Logs/453 &
VirtualNextGenSequencer Bacteria-Genomes/Roseobacter_litoralis_Och_149_uid54719.fasta 0.0025 400 40 1126484 100 Reads/454_1.fasta Reads/454_2.fasta &> Logs/454 &
VirtualNextGenSequencer Bacteria-Genomes/Shigella_sonnei_Ss046_uid58217.fasta 0.0025 400 40 1125249 100 Reads/455_1.fasta Reads/455_2.fasta &> Logs/455 &

wait
