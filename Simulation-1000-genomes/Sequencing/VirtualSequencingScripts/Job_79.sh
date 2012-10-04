#!/bin/bash
#$ -N VirtualSequencer-79
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Acidaminococcus_intestini_RyC_MR95_uid74445.fasta 0.0025 400 40 961149 100 Reads/624_1.fasta Reads/624_2.fasta &> Logs/624 &
VirtualNextGenSequencer Bacteria-Genomes/Klebsiella_pneumoniae_NTUH_K2044_uid59073.fasta 0.0025 400 40 960381 100 Reads/625_1.fasta Reads/625_2.fasta &> Logs/625 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_anthracis__Ames_Ancestor__uid58083.fasta 0.0025 400 40 959615 100 Reads/626_1.fasta Reads/626_2.fasta &> Logs/626 &
VirtualNextGenSequencer Bacteria-Genomes/Methylovorus_MP688_uid60723.fasta 0.0025 400 40 958851 100 Reads/627_1.fasta Reads/627_2.fasta &> Logs/627 &
VirtualNextGenSequencer Bacteria-Genomes/Methanocaldococcus_jannaschii_DSM_2661_uid57713.fasta 0.0025 400 40 958088 100 Reads/628_1.fasta Reads/628_2.fasta &> Logs/628 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_peacockii_Rustic_uid59301.fasta 0.0025 400 40 957328 100 Reads/629_1.fasta Reads/629_2.fasta &> Logs/629 &
VirtualNextGenSequencer Bacteria-Genomes/Geodermatophilus_obscurus_DSM_43160_uid43725.fasta 0.0025 400 40 956569 100 Reads/630_1.fasta Reads/630_2.fasta &> Logs/630 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_nodulans_ORS_2060_uid59023.fasta 0.0025 400 40 955812 100 Reads/631_1.fasta Reads/631_2.fasta &> Logs/631 &

wait
