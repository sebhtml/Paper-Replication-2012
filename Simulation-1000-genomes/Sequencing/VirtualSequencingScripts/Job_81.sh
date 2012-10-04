#!/bin/bash
#$ -N VirtualSequencer-81
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_sakei_23K_uid58281.fasta 0.0025 400 40 949078 100 Reads/640_1.fasta Reads/640_2.fasta &> Logs/640 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_MGAS10270_uid58571.fasta 0.0025 400 40 948338 100 Reads/641_1.fasta Reads/641_2.fasta &> Logs/641 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfurimonas_denitrificans_DSM_1251_uid58185.fasta 0.0025 400 40 947601 100 Reads/642_1.fasta Reads/642_2.fasta &> Logs/642 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_pseudethanolicus_ATCC_33223_uid58339.fasta 0.0025 400 40 946865 100 Reads/643_1.fasta Reads/643_2.fasta &> Logs/643 &
VirtualNextGenSequencer Bacteria-Genomes/Anaeromyxobacter_dehalogenans_2CP_1_uid58989.fasta 0.0025 400 40 946130 100 Reads/644_1.fasta Reads/644_2.fasta &> Logs/644 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_oneidensis_MR_1_uid57949.fasta 0.0025 400 40 945398 100 Reads/645_1.fasta Reads/645_2.fasta &> Logs/645 &
VirtualNextGenSequencer Bacteria-Genomes/Ehrlichia_ruminantium_Gardel_uid58245.fasta 0.0025 400 40 944667 100 Reads/646_1.fasta Reads/646_2.fasta &> Logs/646 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_syringae_tomato_DC3000_uid57967.fasta 0.0025 400 40 943938 100 Reads/647_1.fasta Reads/647_2.fasta &> Logs/647 &

wait
