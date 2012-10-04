#!/bin/bash
#$ -N VirtualSequencer-101
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptomyces_violaceusniger_Tu_4113_uid52609.fasta 0.0025 400 40 849014 100 Reads/800_1.fasta Reads/800_2.fasta &> Logs/800 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Blochmannia_pennsylvanicus_BPEN_uid58329.fasta 0.0025 400 40 848484 100 Reads/801_1.fasta Reads/801_2.fasta &> Logs/801 &
VirtualNextGenSequencer Bacteria-Genomes/Halogeometricum_borinquense_DSM_11551_uid54919.fasta 0.0025 400 40 847956 100 Reads/802_1.fasta Reads/802_2.fasta &> Logs/802 &
VirtualNextGenSequencer Bacteria-Genomes/Pectobacterium_carotovorum_PC1_uid59295.fasta 0.0025 400 40 847428 100 Reads/803_1.fasta Reads/803_2.fasta &> Logs/803 &
VirtualNextGenSequencer Bacteria-Genomes/Parabacteroides_distasonis_ATCC_8503_uid58301.fasta 0.0025 400 40 846902 100 Reads/804_1.fasta Reads/804_2.fasta &> Logs/804 &
VirtualNextGenSequencer Bacteria-Genomes/Acidithiobacillus_ferrooxidans_ATCC_53993_uid58613.fasta 0.0025 400 40 846376 100 Reads/805_1.fasta Reads/805_2.fasta &> Logs/805 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotomaculum_reducens_MI_1_uid58277.fasta 0.0025 400 40 845851 100 Reads/806_1.fasta Reads/806_2.fasta &> Logs/806 &
VirtualNextGenSequencer Bacteria-Genomes/Caldicellulosiruptor_kristjanssonii_177R1B_uid60393.fasta 0.0025 400 40 845328 100 Reads/807_1.fasta Reads/807_2.fasta &> Logs/807 &

wait
