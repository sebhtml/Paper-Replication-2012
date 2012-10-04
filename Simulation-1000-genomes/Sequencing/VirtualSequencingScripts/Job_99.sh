#!/bin/bash
#$ -N VirtualSequencer-99
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_holarctica_FTNF002_00_uid58999.fasta 0.0025 400 40 857622 100 Reads/784_1.fasta Reads/784_2.fasta &> Logs/784 &
VirtualNextGenSequencer Bacteria-Genomes/Shigella_dysenteriae_Sd197_uid58213.fasta 0.0025 400 40 857077 100 Reads/785_1.fasta Reads/785_2.fasta &> Logs/785 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_thermophilus_LMD_9_uid58327.fasta 0.0025 400 40 856532 100 Reads/786_1.fasta Reads/786_2.fasta &> Logs/786 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_vannielii_SB_uid58767.fasta 0.0025 400 40 855988 100 Reads/787_1.fasta Reads/787_2.fasta &> Logs/787 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_baltica_OS155_uid58259.fasta 0.0025 400 40 855446 100 Reads/788_1.fasta Reads/788_2.fasta &> Logs/788 &
VirtualNextGenSequencer Bacteria-Genomes/Propionibacterium_acnes_SK137_uid48071.fasta 0.0025 400 40 854904 100 Reads/789_1.fasta Reads/789_2.fasta &> Logs/789 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_subtilis_spizizenii_W23_uid51879.fasta 0.0025 400 40 854363 100 Reads/790_1.fasta Reads/790_2.fasta &> Logs/790 &
VirtualNextGenSequencer Bacteria-Genomes/Achromobacter_xylosoxidans_A8_uid59899.fasta 0.0025 400 40 853824 100 Reads/791_1.fasta Reads/791_2.fasta &> Logs/791 &

wait
