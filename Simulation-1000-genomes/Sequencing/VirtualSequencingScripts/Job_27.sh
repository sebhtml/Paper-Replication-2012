#!/bin/bash
#$ -N VirtualSequencer-27
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_parainfluenzae_T3T1_uid72801.fasta 0.0025 400 40 1662102 100 Reads/208_1.fasta Reads/208_2.fasta &> Logs/208 &
VirtualNextGenSequencer Bacteria-Genomes/Gluconacetobacter_diazotrophicus_PAl_5_uid61587.fasta 0.0025 400 40 1658140 100 Reads/209_1.fasta Reads/209_2.fasta &> Logs/209 &
VirtualNextGenSequencer Bacteria-Genomes/Thermodesulfobacterium_OPB45_uid68283.fasta 0.0025 400 40 1654206 100 Reads/210_1.fasta Reads/210_2.fasta &> Logs/210 &
VirtualNextGenSequencer Bacteria-Genomes/Acidiphilium_cryptum_JF_5_uid58447.fasta 0.0025 400 40 1650300 100 Reads/211_1.fasta Reads/211_2.fasta &> Logs/211 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfurococcus_kamchatkensis_1221n_uid59133.fasta 0.0025 400 40 1646422 100 Reads/212_1.fasta Reads/212_2.fasta &> Logs/212 &
VirtualNextGenSequencer Bacteria-Genomes/Thermosipho_melanesiensis_BI429_uid58683.fasta 0.0025 400 40 1642570 100 Reads/213_1.fasta Reads/213_2.fasta &> Logs/213 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_oralis_Uo5_uid65449.fasta 0.0025 400 40 1638746 100 Reads/214_1.fasta Reads/214_2.fasta &> Logs/214 &
VirtualNextGenSequencer Bacteria-Genomes/Thiomonas_intermedia_K12_uid48825.fasta 0.0025 400 40 1634948 100 Reads/215_1.fasta Reads/215_2.fasta &> Logs/215 &

wait
