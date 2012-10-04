#!/bin/bash
#$ -N VirtualSequencer-65
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Metallosphaera_cuprina_Ar_4_uid66329.fasta 0.0025 400 40 1060895 100 Reads/512_1.fasta Reads/512_2.fasta &> Logs/512 &
VirtualNextGenSequencer Bacteria-Genomes/Xylella_fastidiosa_M23_uid58809.fasta 0.0025 400 40 1059862 100 Reads/513_1.fasta Reads/513_2.fasta &> Logs/513 &
VirtualNextGenSequencer Bacteria-Genomes/Magnetospirillum_magneticum_AMB_1_uid58527.fasta 0.0025 400 40 1058833 100 Reads/514_1.fasta Reads/514_2.fasta &> Logs/514 &
VirtualNextGenSequencer Bacteria-Genomes/Haliangium_ochraceum_DSM_14365_uid41425.fasta 0.0025 400 40 1057806 100 Reads/515_1.fasta Reads/515_2.fasta &> Logs/515 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_licheniformis_ATCC_14580_uid58097.fasta 0.0025 400 40 1056783 100 Reads/516_1.fasta Reads/516_2.fasta &> Logs/516 &
VirtualNextGenSequencer Bacteria-Genomes/Acidilobus_saccharovorans_345_15_uid51395.fasta 0.0025 400 40 1055762 100 Reads/517_1.fasta Reads/517_2.fasta &> Logs/517 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_anguillarum_775_uid68057.fasta 0.0025 400 40 1054744 100 Reads/518_1.fasta Reads/518_2.fasta &> Logs/518 &
VirtualNextGenSequencer Bacteria-Genomes/Coprothermobacter_proteolyticus_DSM_5265_uid59253.fasta 0.0025 400 40 1053730 100 Reads/519_1.fasta Reads/519_2.fasta &> Logs/519 &

wait
