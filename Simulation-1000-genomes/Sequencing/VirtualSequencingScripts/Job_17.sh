#!/bin/bash
#$ -N VirtualSequencer-17
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Microbacterium_testaceum_StLB037_uid62789.fasta 0.0025 400 40 2115612 100 Reads/128_1.fasta Reads/128_2.fasta &> Logs/128 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_HS_uid58393.fasta 0.0025 400 40 2107459 100 Reads/129_1.fasta Reads/129_2.fasta &> Logs/129 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_fluorescens_Pf_5_uid57937.fasta 0.0025 400 40 2099400 100 Reads/130_1.fasta Reads/130_2.fasta &> Logs/130 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_SSI_1_uid57895.fasta 0.0025 400 40 2091433 100 Reads/131_1.fasta Reads/131_2.fasta &> Logs/131 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Typhi_Ty2_uid57973.fasta 0.0025 400 40 2083555 100 Reads/132_1.fasta Reads/132_2.fasta &> Logs/132 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_jejuni_RM1221_uid57899.fasta 0.0025 400 40 2075766 100 Reads/133_1.fasta Reads/133_2.fasta &> Logs/133 &
VirtualNextGenSequencer Bacteria-Genomes/Polymorphum_gilvum_SL003B_26A1_uid65447.fasta 0.0025 400 40 2068064 100 Reads/134_1.fasta Reads/134_2.fasta &> Logs/134 &
VirtualNextGenSequencer Bacteria-Genomes/Verrucosispora_maris_AB_18_032_uid66297.fasta 0.0025 400 40 2060447 100 Reads/135_1.fasta Reads/135_2.fasta &> Logs/135 &

wait
