#!/bin/bash
#$ -N VirtualSequencer-113
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_Spyr1_uid61403.fasta 0.0025 400 40 802296 100 Reads/896_1.fasta Reads/896_2.fasta &> Logs/896 &
VirtualNextGenSequencer Bacteria-Genomes/Marinomonas_posidonica_IVIA_Po_181_uid67323.fasta 0.0025 400 40 801849 100 Reads/897_1.fasta Reads/897_2.fasta &> Logs/897 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_felis_Fe_C_56_uid57971.fasta 0.0025 400 40 801403 100 Reads/898_1.fasta Reads/898_2.fasta &> Logs/898 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Protochlamydia_amoebophila_UWE25_uid58079.fasta 0.0025 400 40 800958 100 Reads/899_1.fasta Reads/899_2.fasta &> Logs/899 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudoxanthomonas_spadix_BD_a59_uid75113.fasta 0.0025 400 40 800513 100 Reads/900_1.fasta Reads/900_2.fasta &> Logs/900 &
VirtualNextGenSequencer Bacteria-Genomes/Saccharomonospora_viridis_DSM_43017_uid59055.fasta 0.0025 400 40 800069 100 Reads/901_1.fasta Reads/901_2.fasta &> Logs/901 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_R6_uid57859.fasta 0.0025 400 40 799626 100 Reads/902_1.fasta Reads/902_2.fasta &> Logs/902 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_psittaci_6BC_uid63621.fasta 0.0025 400 40 799184 100 Reads/903_1.fasta Reads/903_2.fasta &> Logs/903 &

wait
