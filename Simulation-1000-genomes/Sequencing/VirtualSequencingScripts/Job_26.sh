#!/bin/bash
#$ -N VirtualSequencer-26
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Vibrio_cholerae_M66_2_uid59355.fasta 0.0025 400 40 1694856 100 Reads/200_1.fasta Reads/200_2.fasta &> Logs/200 &
VirtualNextGenSequencer Bacteria-Genomes/Chromohalobacter_salexigens_DSM_3043_uid62921.fasta 0.0025 400 40 1690656 100 Reads/201_1.fasta Reads/201_2.fasta &> Logs/201 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_TIGR4_uid57857.fasta 0.0025 400 40 1686487 100 Reads/202_1.fasta Reads/202_2.fasta &> Logs/202 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_haemofelis_Langford_1_uid62461.fasta 0.0025 400 40 1682348 100 Reads/203_1.fasta Reads/203_2.fasta &> Logs/203 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodospirillum_rubrum_ATCC_11170_uid57655.fasta 0.0025 400 40 1678240 100 Reads/204_1.fasta Reads/204_2.fasta &> Logs/204 &
VirtualNextGenSequencer Bacteria-Genomes/Marinobacter_aquaeolei_VT8_uid59419.fasta 0.0025 400 40 1674161 100 Reads/205_1.fasta Reads/205_2.fasta &> Logs/205 &
VirtualNextGenSequencer Bacteria-Genomes/Eggerthella_YY7918_uid68707.fasta 0.0025 400 40 1670112 100 Reads/206_1.fasta Reads/206_2.fasta &> Logs/206 &
VirtualNextGenSequencer Bacteria-Genomes/Moorella_thermoacetica_ATCC_39073_uid58051.fasta 0.0025 400 40 1666093 100 Reads/207_1.fasta Reads/207_2.fasta &> Logs/207 &

wait
