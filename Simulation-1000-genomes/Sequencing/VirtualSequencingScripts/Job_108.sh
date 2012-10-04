#!/bin/bash
#$ -N VirtualSequencer-108
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Rhodopirellula_baltica_SH_1_uid61589.fasta 0.0025 400 40 820806 100 Reads/856_1.fasta Reads/856_2.fasta &> Logs/856 &
VirtualNextGenSequencer Bacteria-Genomes/Methylotenera_mobilis_JLW8_uid59373.fasta 0.0025 400 40 820327 100 Reads/857_1.fasta Reads/857_2.fasta &> Logs/857 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_fluorescens_Pf0_1_uid57591.fasta 0.0025 400 40 819850 100 Reads/858_1.fasta Reads/858_2.fasta &> Logs/858 &
VirtualNextGenSequencer Bacteria-Genomes/Arthrobacter_chlorophenolicus_A6_uid58969.fasta 0.0025 400 40 819373 100 Reads/859_1.fasta Reads/859_2.fasta &> Logs/859 &
VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_thermarum_DSM_5069_uid68449.fasta 0.0025 400 40 818897 100 Reads/860_1.fasta Reads/860_2.fasta &> Logs/860 &
VirtualNextGenSequencer Bacteria-Genomes/Finegoldia_magna_ATCC_29328_uid58867.fasta 0.0025 400 40 818422 100 Reads/861_1.fasta Reads/861_2.fasta &> Logs/861 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_biovar_anthracis_CI_uid50615.fasta 0.0025 400 40 817948 100 Reads/862_1.fasta Reads/862_2.fasta &> Logs/862 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_canadensis_McKiel_uid58159.fasta 0.0025 400 40 817474 100 Reads/863_1.fasta Reads/863_2.fasta &> Logs/863 &

wait
