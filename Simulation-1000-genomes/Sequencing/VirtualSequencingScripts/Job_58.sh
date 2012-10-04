#!/bin/bash
#$ -N VirtualSequencer-58
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Francisella_novicida_U112_uid58499.fasta 0.0025 400 40 1124017 100 Reads/456_1.fasta Reads/456_2.fasta &> Logs/456 &
VirtualNextGenSequencer Bacteria-Genomes/Salinibacter_ruber_M8_uid47323.fasta 0.0025 400 40 1122789 100 Reads/457_1.fasta Reads/457_2.fasta &> Logs/457 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_amyloliquefaciens_FZB42_uid58271.fasta 0.0025 400 40 1121565 100 Reads/458_1.fasta Reads/458_2.fasta &> Logs/458 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_melitensis_ATCC_23457_uid59241.fasta 0.0025 400 40 1120345 100 Reads/459_1.fasta Reads/459_2.fasta &> Logs/459 &
VirtualNextGenSequencer Bacteria-Genomes/Thermosphaera_aggregans_DSM_11486_uid48993.fasta 0.0025 400 40 1119130 100 Reads/460_1.fasta Reads/460_2.fasta &> Logs/460 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_E33L_uid58103.fasta 0.0025 400 40 1117918 100 Reads/461_1.fasta Reads/461_2.fasta &> Logs/461 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_suis_ST3_uid66327.fasta 0.0025 400 40 1116710 100 Reads/462_1.fasta Reads/462_2.fasta &> Logs/462 &
VirtualNextGenSequencer Bacteria-Genomes/Legionella_pneumophila_Lens_uid58209.fasta 0.0025 400 40 1115506 100 Reads/463_1.fasta Reads/463_2.fasta &> Logs/463 &

wait
