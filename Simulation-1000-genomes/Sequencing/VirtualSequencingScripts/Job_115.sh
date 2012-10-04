#!/bin/bash
#$ -N VirtualSequencer-115
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_delbrueckii_bulgaricus_ND02_uid60621.fasta 0.0025 400 40 795235 100 Reads/912_1.fasta Reads/912_2.fasta &> Logs/912 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_abortus_S19_uid58873.fasta 0.0025 400 40 794800 100 Reads/913_1.fasta Reads/913_2.fasta &> Logs/913 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_JA_3_3Ab_uid58535.fasta 0.0025 400 40 794365 100 Reads/914_1.fasta Reads/914_2.fasta &> Logs/914 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_putrefaciens_CN_32_uid58267.fasta 0.0025 400 40 793932 100 Reads/915_1.fasta Reads/915_2.fasta &> Logs/915 &
VirtualNextGenSequencer Bacteria-Genomes/Janthinobacterium_Marseille_uid58603.fasta 0.0025 400 40 793499 100 Reads/916_1.fasta Reads/916_2.fasta &> Logs/916 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_aeolicus_Nankai_3_uid58823.fasta 0.0025 400 40 793066 100 Reads/917_1.fasta Reads/917_2.fasta &> Logs/917 &
VirtualNextGenSequencer Bacteria-Genomes/Glaciecola_4H_3_7_YE_5_uid66595.fasta 0.0025 400 40 792635 100 Reads/918_1.fasta Reads/918_2.fasta &> Logs/918 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_conorii_Malish_7_uid57633.fasta 0.0025 400 40 792204 100 Reads/919_1.fasta Reads/919_2.fasta &> Logs/919 &

wait
