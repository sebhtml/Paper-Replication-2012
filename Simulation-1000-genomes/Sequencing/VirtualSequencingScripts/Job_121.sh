#!/bin/bash
#$ -N VirtualSequencer-121
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola_Sg__Schizaphis_graminum__uid57913.fasta 0.0025 400 40 775120 100 Reads/960_1.fasta Reads/960_2.fasta &> Logs/960 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_JA_2_3B_a_2_13__uid58537.fasta 0.0025 400 40 774717 100 Reads/961_1.fasta Reads/961_2.fasta &> Logs/961 &
VirtualNextGenSequencer Bacteria-Genomes/Shigella_flexneri_2a_2457T_uid57991.fasta 0.0025 400 40 774315 100 Reads/962_1.fasta Reads/962_2.fasta &> Logs/962 &
VirtualNextGenSequencer Bacteria-Genomes/Exiguobacterium_AT1b_uid59093.fasta 0.0025 400 40 773913 100 Reads/963_1.fasta Reads/963_2.fasta &> Logs/963 &
VirtualNextGenSequencer Bacteria-Genomes/Thermomonospora_curvata_DSM_43183_uid41885.fasta 0.0025 400 40 773512 100 Reads/964_1.fasta Reads/964_2.fasta &> Logs/964 &
VirtualNextGenSequencer Bacteria-Genomes/Lactococcus_lactis_cremoris_SK11_uid57983.fasta 0.0025 400 40 773112 100 Reads/965_1.fasta Reads/965_2.fasta &> Logs/965 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_aurimucosum_ATCC_700975_uid59409.fasta 0.0025 400 40 772712 100 Reads/966_1.fasta Reads/966_2.fasta &> Logs/966 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_hyorhinis_HUB_1_uid51695.fasta 0.0025 400 40 772313 100 Reads/967_1.fasta Reads/967_2.fasta &> Logs/967 &

wait
