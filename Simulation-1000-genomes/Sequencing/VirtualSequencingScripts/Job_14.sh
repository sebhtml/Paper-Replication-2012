#!/bin/bash
#$ -N VirtualSequencer-14
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_A_Hall_uid58931.fasta 0.0025 400 40 2344964 100 Reads/104_1.fasta Reads/104_2.fasta &> Logs/104 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_stutzeri_A1501_uid58641.fasta 0.0025 400 40 2333877 100 Reads/105_1.fasta Reads/105_2.fasta &> Logs/105 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_mustelae_12198_uid46647.fasta 0.0025 400 40 2322945 100 Reads/106_1.fasta Reads/106_2.fasta &> Logs/106 &
VirtualNextGenSequencer Bacteria-Genomes/Opitutus_terrae_PB90_1_uid58965.fasta 0.0025 400 40 2312166 100 Reads/107_1.fasta Reads/107_2.fasta &> Logs/107 &
VirtualNextGenSequencer Bacteria-Genomes/Syntrophomonas_wolfei_Goettingen_uid58179.fasta 0.0025 400 40 2301535 100 Reads/108_1.fasta Reads/108_2.fasta &> Logs/108 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacillus_WCH70_uid59045.fasta 0.0025 400 40 2291050 100 Reads/109_1.fasta Reads/109_2.fasta &> Logs/109 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Tremblaya_princeps_PCIT_uid68741.fasta 0.0025 400 40 2280706 100 Reads/110_1.fasta Reads/110_2.fasta &> Logs/110 &
VirtualNextGenSequencer Bacteria-Genomes/Methylotenera_301_uid49469.fasta 0.0025 400 40 2270502 100 Reads/111_1.fasta Reads/111_2.fasta &> Logs/111 &

wait
