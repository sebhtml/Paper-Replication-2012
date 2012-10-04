#!/bin/bash
#$ -N VirtualSequencer-103
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Shewanella_MR_4_uid58345.fasta 0.0025 400 40 840659 100 Reads/816_1.fasta Reads/816_2.fasta &> Logs/816 &
VirtualNextGenSequencer Bacteria-Genomes/Acinetobacter_baumannii_AB307_0294_uid59271.fasta 0.0025 400 40 840145 100 Reads/817_1.fasta Reads/817_2.fasta &> Logs/817 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_W3_18_1_uid58341.fasta 0.0025 400 40 839632 100 Reads/818_1.fasta Reads/818_2.fasta &> Logs/818 &
VirtualNextGenSequencer Bacteria-Genomes/Spirochaeta_coccoides_DSM_17374_uid66331.fasta 0.0025 400 40 839120 100 Reads/819_1.fasta Reads/819_2.fasta &> Logs/819 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrococcus_abyssi_GE5_uid62903.fasta 0.0025 400 40 838609 100 Reads/820_1.fasta Reads/820_2.fasta &> Logs/820 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_UTI89_uid58541.fasta 0.0025 400 40 838098 100 Reads/821_1.fasta Reads/821_2.fasta &> Logs/821 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_holarctica_OSU18_uid58687.fasta 0.0025 400 40 837589 100 Reads/822_1.fasta Reads/822_2.fasta &> Logs/822 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_cenocepacia_AU_1054_uid58371.fasta 0.0025 400 40 837081 100 Reads/823_1.fasta Reads/823_2.fasta &> Logs/823 &

wait
