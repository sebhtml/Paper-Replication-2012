#!/bin/bash
#$ -N VirtualSequencer-125
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Desulfobacterium_autotrophicum_HRM2_uid59061.fasta 0.0025 400 40 762529 100 Reads/992_1.fasta Reads/992_2.fasta &> Logs/992 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Accumulibacter_phosphatis_clade_IIA_UW_1_uid59207.fasta 0.0025 400 40 762145 100 Reads/993_1.fasta Reads/993_2.fasta &> Logs/993 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_piezotolerans_WP3_uid58745.fasta 0.0025 400 40 761762 100 Reads/994_1.fasta Reads/994_2.fasta &> Logs/994 &
VirtualNextGenSequencer Bacteria-Genomes/Arthrobacter_phenanthrenivorans_Sphe3_uid63629.fasta 0.0025 400 40 761380 100 Reads/995_1.fasta Reads/995_2.fasta &> Logs/995 &
VirtualNextGenSequencer Bacteria-Genomes/Acidithiobacillus_caldus_SM_1_uid70791.fasta 0.0025 400 40 760998 100 Reads/996_1.fasta Reads/996_2.fasta &> Logs/996 &
VirtualNextGenSequencer Bacteria-Genomes/Azospirillum_B510_uid46085.fasta 0.0025 400 40 760616 100 Reads/997_1.fasta Reads/997_2.fasta &> Logs/997 &
VirtualNextGenSequencer Bacteria-Genomes/Pelobacter_carbinolicus_DSM_2380_uid58241.fasta 0.0025 400 40 760235 100 Reads/998_1.fasta Reads/998_2.fasta &> Logs/998 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_halodurans_C_125_uid57791.fasta 0.0025 400 40 759855 100 Reads/999_1.fasta Reads/999_2.fasta &> Logs/999 &

wait
