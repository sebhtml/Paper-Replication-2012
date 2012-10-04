#!/bin/bash
#$ -N VirtualSequencer-110
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Myxococcus_xanthus_DK_1622_uid58003.fasta 0.0025 400 40 813249 100 Reads/872_1.fasta Reads/872_2.fasta &> Logs/872 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_NZ131_uid59035.fasta 0.0025 400 40 812784 100 Reads/873_1.fasta Reads/873_2.fasta &> Logs/873 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_ANA_3_uid58347.fasta 0.0025 400 40 812319 100 Reads/874_1.fasta Reads/874_2.fasta &> Logs/874 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_beijerinckii_NCIMB_8052_uid58137.fasta 0.0025 400 40 811856 100 Reads/875_1.fasta Reads/875_2.fasta &> Logs/875 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Amoebophilus_asiaticus_5a2_uid58963.fasta 0.0025 400 40 811393 100 Reads/876_1.fasta Reads/876_2.fasta &> Logs/876 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_cenocepacia_J2315_uid57953.fasta 0.0025 400 40 810930 100 Reads/877_1.fasta Reads/877_2.fasta &> Logs/877 &
VirtualNextGenSequencer Bacteria-Genomes/Weissella_koreensis_KACC_15510_uid68837.fasta 0.0025 400 40 810469 100 Reads/878_1.fasta Reads/878_2.fasta &> Logs/878 &
VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_pickettii_12J_uid58737.fasta 0.0025 400 40 810008 100 Reads/879_1.fasta Reads/879_2.fasta &> Logs/879 &

wait
