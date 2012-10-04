#!/bin/bash
#$ -N VirtualSequencer-61
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pusillimonas_T7_7_uid66391.fasta 0.0025 400 40 1095616 100 Reads/480_1.fasta Reads/480_2.fasta &> Logs/480 &
VirtualNextGenSequencer Bacteria-Genomes/Clavibacter_michiganensis_sepedonicus_uid61577.fasta 0.0025 400 40 1094479 100 Reads/481_1.fasta Reads/481_2.fasta &> Logs/481 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_haemolyticus_JCSC1435_uid62919.fasta 0.0025 400 40 1093345 100 Reads/482_1.fasta Reads/482_2.fasta &> Logs/482 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_03BB102_uid59299.fasta 0.0025 400 40 1092215 100 Reads/483_1.fasta Reads/483_2.fasta &> Logs/483 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_fergusonii_ATCC_35469_uid59375.fasta 0.0025 400 40 1091089 100 Reads/484_1.fasta Reads/484_2.fasta &> Logs/484 &
VirtualNextGenSequencer Bacteria-Genomes/Erwinia_pyrifoliae_Ep1_96_uid40659.fasta 0.0025 400 40 1089966 100 Reads/485_1.fasta Reads/485_2.fasta &> Logs/485 &
VirtualNextGenSequencer Bacteria-Genomes/Halopiger_xanaduensis_SH_6_uid68105.fasta 0.0025 400 40 1088846 100 Reads/486_1.fasta Reads/486_2.fasta &> Logs/486 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_japonica_YH_uid73963.fasta 0.0025 400 40 1087730 100 Reads/487_1.fasta Reads/487_2.fasta &> Logs/487 &

wait
