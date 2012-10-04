#!/bin/bash
#$ -N VirtualSequencer-23
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methanoculleus_marisnigri_JR1_uid58561.fasta 0.0025 400 40 1806110 100 Reads/176_1.fasta Reads/176_2.fasta &> Logs/176 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_plantarum_WCFS1_uid62911.fasta 0.0025 400 40 1801030 100 Reads/177_1.fasta Reads/177_2.fasta &> Logs/177 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfurihydrogenibium_azorense_Az_Fu1_uid58121.fasta 0.0025 400 40 1795992 100 Reads/178_1.fasta Reads/178_2.fasta &> Logs/178 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_CFT073_uid57915.fasta 0.0025 400 40 1790996 100 Reads/179_1.fasta Reads/179_2.fasta &> Logs/179 &
VirtualNextGenSequencer Bacteria-Genomes/Chlorobium_tepidum_TLS_uid57897.fasta 0.0025 400 40 1786042 100 Reads/180_1.fasta Reads/180_2.fasta &> Logs/180 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_AP200_uid52453.fasta 0.0025 400 40 1781128 100 Reads/181_1.fasta Reads/181_2.fasta &> Logs/181 &
VirtualNextGenSequencer Bacteria-Genomes/Veillonella_parvula_DSM_2008_uid41927.fasta 0.0025 400 40 1776255 100 Reads/182_1.fasta Reads/182_2.fasta &> Logs/182 &
VirtualNextGenSequencer Bacteria-Genomes/Methanothermobacter_marburgensis_Marburg_uid51637.fasta 0.0025 400 40 1771422 100 Reads/183_1.fasta Reads/183_2.fasta &> Logs/183 &

wait
