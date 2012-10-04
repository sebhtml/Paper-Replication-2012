#!/bin/bash
#$ -N VirtualSequencer-112
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_434_Bu_uid61633.fasta 0.0025 400 40 805898 100 Reads/888_1.fasta Reads/888_2.fasta &> Logs/888 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_hyopneumoniae_7448_uid58039.fasta 0.0025 400 40 805445 100 Reads/889_1.fasta Reads/889_2.fasta &> Logs/889 &
VirtualNextGenSequencer Bacteria-Genomes/Novosphingobium_aromaticivorans_DSM_12444_uid57747.fasta 0.0025 400 40 804993 100 Reads/890_1.fasta Reads/890_2.fasta &> Logs/890 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodothermus_marinus_DSM_4252_uid41729.fasta 0.0025 400 40 804542 100 Reads/891_1.fasta Reads/891_2.fasta &> Logs/891 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_mallei_SAVP1_uid58387.fasta 0.0025 400 40 804091 100 Reads/892_1.fasta Reads/892_2.fasta &> Logs/892 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_hominis_ATCC_23114_uid41875.fasta 0.0025 400 40 803641 100 Reads/893_1.fasta Reads/893_2.fasta &> Logs/893 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthobacter_autotrophicus_Py2_uid58453.fasta 0.0025 400 40 803192 100 Reads/894_1.fasta Reads/894_2.fasta &> Logs/894 &
VirtualNextGenSequencer Bacteria-Genomes/Methylococcus_capsulatus_Bath_uid57607.fasta 0.0025 400 40 802744 100 Reads/895_1.fasta Reads/895_2.fasta &> Logs/895 &

wait
