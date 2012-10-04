#!/bin/bash
#$ -N VirtualSequencer-120
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Bacillus_weihenstephanensis_KBAB4_uid58315.fasta 0.0025 400 40 778367 100 Reads/952_1.fasta Reads/952_2.fasta &> Logs/952 &
VirtualNextGenSequencer Bacteria-Genomes/Variovorax_paradoxus_S110_uid59437.fasta 0.0025 400 40 777959 100 Reads/953_1.fasta Reads/953_2.fasta &> Logs/953 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_oryzae_PXO99A_uid59131.fasta 0.0025 400 40 777552 100 Reads/954_1.fasta Reads/954_2.fasta &> Logs/954 &
VirtualNextGenSequencer Bacteria-Genomes/Bacteroides_fragilis_YCH46_uid58195.fasta 0.0025 400 40 777145 100 Reads/955_1.fasta Reads/955_2.fasta &> Logs/955 &
VirtualNextGenSequencer Bacteria-Genomes/Methanoplanus_petrolearius_DSM_11571_uid52695.fasta 0.0025 400 40 776739 100 Reads/956_1.fasta Reads/956_2.fasta &> Logs/956 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_mediasiatica_FSC147_uid58939.fasta 0.0025 400 40 776333 100 Reads/957_1.fasta Reads/957_2.fasta &> Logs/957 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_pumilus_SAFR_032_uid59017.fasta 0.0025 400 40 775928 100 Reads/958_1.fasta Reads/958_2.fasta &> Logs/958 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O103_H2_12009_uid41013.fasta 0.0025 400 40 775524 100 Reads/959_1.fasta Reads/959_2.fasta &> Logs/959 &

wait
