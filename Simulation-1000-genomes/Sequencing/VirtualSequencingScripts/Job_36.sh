#!/bin/bash
#$ -N VirtualSequencer-36
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Cronobacter_sakazakii_ATCC_BAA_894_uid58145.fasta 0.0025 400 40 1433434 100 Reads/280_1.fasta Reads/280_2.fasta &> Logs/280 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_coagulans_36D1_uid54335.fasta 0.0025 400 40 1430890 100 Reads/281_1.fasta Reads/281_2.fasta &> Logs/281 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_mycoides_SC_PG1_uid58031.fasta 0.0025 400 40 1428360 100 Reads/282_1.fasta Reads/282_2.fasta &> Logs/282 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_aeruginosa_PAO1_uid57945.fasta 0.0025 400 40 1425843 100 Reads/283_1.fasta Reads/283_2.fasta &> Logs/283 &
VirtualNextGenSequencer Bacteria-Genomes/Dehalococcoides_VS_uid42393.fasta 0.0025 400 40 1423339 100 Reads/284_1.fasta Reads/284_2.fasta &> Logs/284 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_ovis_ATCC_25840_uid58113.fasta 0.0025 400 40 1420849 100 Reads/285_1.fasta Reads/285_2.fasta &> Logs/285 &
VirtualNextGenSequencer Bacteria-Genomes/Methanobrevibacter_smithii_ATCC_35061_uid58827.fasta 0.0025 400 40 1418371 100 Reads/286_1.fasta Reads/286_2.fasta &> Logs/286 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_acidophilus_NCFM_uid57685.fasta 0.0025 400 40 1415907 100 Reads/287_1.fasta Reads/287_2.fasta &> Logs/287 &

wait
