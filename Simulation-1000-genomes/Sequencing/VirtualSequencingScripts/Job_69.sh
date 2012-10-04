#!/bin/bash
#$ -N VirtualSequencer-69
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Nitrosomonas_Is79A3_uid68745.fasta 0.0025 400 40 1029278 100 Reads/544_1.fasta Reads/544_2.fasta &> Logs/544 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_JLS_uid58489.fasta 0.0025 400 40 1028335 100 Reads/545_1.fasta Reads/545_2.fasta &> Logs/545 &
VirtualNextGenSequencer Bacteria-Genomes/Frankia_alni_ACN14a_uid58695.fasta 0.0025 400 40 1027394 100 Reads/546_1.fasta Reads/546_2.fasta &> Logs/546 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoplasma_volcanium_GSS1_uid57751.fasta 0.0025 400 40 1026457 100 Reads/547_1.fasta Reads/547_2.fasta &> Logs/547 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_extorquens_PA1_uid58821.fasta 0.0025 400 40 1025521 100 Reads/548_1.fasta Reads/548_2.fasta &> Logs/548 &
VirtualNextGenSequencer Bacteria-Genomes/Coriobacterium_glomerans_PW2_uid65787.fasta 0.0025 400 40 1024589 100 Reads/549_1.fasta Reads/549_2.fasta &> Logs/549 &
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_NATL1A_uid58423.fasta 0.0025 400 40 1023658 100 Reads/550_1.fasta Reads/550_2.fasta &> Logs/550 &
VirtualNextGenSequencer Bacteria-Genomes/Halorhabdus_utahensis_DSM_12940_uid59189.fasta 0.0025 400 40 1022731 100 Reads/551_1.fasta Reads/551_2.fasta &> Logs/551 &

wait
