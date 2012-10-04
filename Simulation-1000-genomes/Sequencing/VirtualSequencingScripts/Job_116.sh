#!/bin/bash
#$ -N VirtualSequencer-116
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pseudoalteromonas_haloplanktis_TAC125_uid58431.fasta 0.0025 400 40 791774 100 Reads/920_1.fasta Reads/920_2.fasta &> Logs/920 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_ATCC_8739_uid58783.fasta 0.0025 400 40 791344 100 Reads/921_1.fasta Reads/921_2.fasta &> Logs/921 &
VirtualNextGenSequencer Bacteria-Genomes/Leadbetterella_byssophila_DSM_17132_uid60161.fasta 0.0025 400 40 790915 100 Reads/922_1.fasta Reads/922_2.fasta &> Logs/922 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Carsonella_ruddii_uid58773.fasta 0.0025 400 40 790487 100 Reads/923_1.fasta Reads/923_2.fasta &> Logs/923 &
VirtualNextGenSequencer Bacteria-Genomes/Chromobacterium_violaceum_ATCC_12472_uid58001.fasta 0.0025 400 40 790060 100 Reads/924_1.fasta Reads/924_2.fasta &> Logs/924 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_MCS_uid58465.fasta 0.0025 400 40 789633 100 Reads/925_1.fasta Reads/925_2.fasta &> Logs/925 &
VirtualNextGenSequencer Bacteria-Genomes/Simkania_negevensis_Z_uid68451.fasta 0.0025 400 40 789207 100 Reads/926_1.fasta Reads/926_2.fasta &> Logs/926 &
VirtualNextGenSequencer Bacteria-Genomes/Vulcanisaeta_moutnovskia_768_28_uid63631.fasta 0.0025 400 40 788782 100 Reads/927_1.fasta Reads/927_2.fasta &> Logs/927 &

wait
