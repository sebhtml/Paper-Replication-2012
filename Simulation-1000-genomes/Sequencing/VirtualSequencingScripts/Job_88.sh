#!/bin/bash
#$ -N VirtualSequencer-88
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Neisseria_gonorrhoeae_NCCP11945_uid59191.fasta 0.0025 400 40 910153 100 Reads/696_1.fasta Reads/696_2.fasta &> Logs/696 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_FSC198_uid58693.fasta 0.0025 400 40 909501 100 Reads/697_1.fasta Reads/697_2.fasta &> Logs/697 &
VirtualNextGenSequencer Bacteria-Genomes/Zymomonas_mobilis_ZM4_uid58095.fasta 0.0025 400 40 908850 100 Reads/698_1.fasta Reads/698_2.fasta &> Logs/698 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_B_REL606_uid58803.fasta 0.0025 400 40 908201 100 Reads/699_1.fasta Reads/699_2.fasta &> Logs/699 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_MRSA252_uid57839.fasta 0.0025 400 40 907553 100 Reads/700_1.fasta Reads/700_2.fasta &> Logs/700 &
VirtualNextGenSequencer Bacteria-Genomes/Tepidanaerobacter_Re1_uid66873.fasta 0.0025 400 40 906906 100 Reads/701_1.fasta Reads/701_2.fasta &> Logs/701 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_CC9311_uid58123.fasta 0.0025 400 40 906261 100 Reads/702_1.fasta Reads/702_2.fasta &> Logs/702 &
VirtualNextGenSequencer Bacteria-Genomes/Edwardsiella_tarda_EIB202_uid41819.fasta 0.0025 400 40 905617 100 Reads/703_1.fasta Reads/703_2.fasta &> Logs/703 &

wait
