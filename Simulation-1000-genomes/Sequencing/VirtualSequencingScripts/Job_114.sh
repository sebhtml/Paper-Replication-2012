#!/bin/bash
#$ -N VirtualSequencer-114
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Gluconacetobacter_xylinus_NBRC_3288_uid46523.fasta 0.0025 400 40 798742 100 Reads/904_1.fasta Reads/904_2.fasta &> Logs/904 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Paratyphi_A_ATCC_9150_uid58201.fasta 0.0025 400 40 798301 100 Reads/905_1.fasta Reads/905_2.fasta &> Logs/905 &
VirtualNextGenSequencer Bacteria-Genomes/Roseburia_hominis_A2_183_uid73419.fasta 0.0025 400 40 797861 100 Reads/906_1.fasta Reads/906_2.fasta &> Logs/906 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_rhizoxinica_HKI_454_uid60487.fasta 0.0025 400 40 797422 100 Reads/907_1.fasta Reads/907_2.fasta &> Logs/907 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_ATCC_10987_uid57673.fasta 0.0025 400 40 796983 100 Reads/908_1.fasta Reads/908_2.fasta &> Logs/908 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pseudotuberculosis_IP_31758_uid58487.fasta 0.0025 400 40 796545 100 Reads/909_1.fasta Reads/909_2.fasta &> Logs/909 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_leprae_Br4923_uid59293.fasta 0.0025 400 40 796107 100 Reads/910_1.fasta Reads/910_2.fasta &> Logs/910 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_casei_BL23_uid59237.fasta 0.0025 400 40 795671 100 Reads/911_1.fasta Reads/911_2.fasta &> Logs/911 &

wait
