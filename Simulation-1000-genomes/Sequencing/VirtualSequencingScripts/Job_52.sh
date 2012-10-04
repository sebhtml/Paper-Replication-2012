#!/bin/bash
#$ -N VirtualSequencer-52
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methanosalsum_zhilinae_DSM_4017_uid68249.fasta 0.0025 400 40 1188144 100 Reads/408_1.fasta Reads/408_2.fasta &> Logs/408 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_pseudomallei_1710b_uid58391.fasta 0.0025 400 40 1186695 100 Reads/409_1.fasta Reads/409_2.fasta &> Logs/409 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrobaculum_arsenaticum_DSM_13514_uid58409.fasta 0.0025 400 40 1185250 100 Reads/410_1.fasta Reads/410_2.fasta &> Logs/410 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_anthracis_Ames_uid57909.fasta 0.0025 400 40 1183811 100 Reads/411_1.fasta Reads/411_2.fasta &> Logs/411 &
VirtualNextGenSequencer Bacteria-Genomes/Klebsiella_pneumoniae_342_uid59145.fasta 0.0025 400 40 1182377 100 Reads/412_1.fasta Reads/412_2.fasta &> Logs/412 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfuricurvum_kujiense_DSM_16994_uid60789.fasta 0.0025 400 40 1180948 100 Reads/413_1.fasta Reads/413_2.fasta &> Logs/413 &
VirtualNextGenSequencer Bacteria-Genomes/Neisseria_meningitidis_053442_uid58587.fasta 0.0025 400 40 1179524 100 Reads/414_1.fasta Reads/414_2.fasta &> Logs/414 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrococcus_NA2_uid66551.fasta 0.0025 400 40 1178106 100 Reads/415_1.fasta Reads/415_2.fasta &> Logs/415 &

wait
