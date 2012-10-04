#!/bin/bash
#$ -N VirtualSequencer-25
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_BisA53_uid58445.fasta 0.0025 400 40 1729626 100 Reads/192_1.fasta Reads/192_2.fasta &> Logs/192 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_M18_uid55771.fasta 0.0025 400 40 1725163 100 Reads/193_1.fasta Reads/193_2.fasta &> Logs/193 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_SCHU_S4_uid57589.fasta 0.0025 400 40 1720733 100 Reads/194_1.fasta Reads/194_2.fasta &> Logs/194 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacillus_flagellatus_KT_uid58049.fasta 0.0025 400 40 1716338 100 Reads/195_1.fasta Reads/195_2.fasta &> Logs/195 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_fluorescens_SBW25_uid62971.fasta 0.0025 400 40 1711976 100 Reads/196_1.fasta Reads/196_2.fasta &> Logs/196 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_mutans_NN2025_uid46353.fasta 0.0025 400 40 1707648 100 Reads/197_1.fasta Reads/197_2.fasta &> Logs/197 &
VirtualNextGenSequencer Bacteria-Genomes/Legionella_pneumophila_Paris_uid58211.fasta 0.0025 400 40 1703352 100 Reads/198_1.fasta Reads/198_2.fasta &> Logs/198 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_typhi_Wilmington_uid58063.fasta 0.0025 400 40 1699088 100 Reads/199_1.fasta Reads/199_2.fasta &> Logs/199 &

wait
