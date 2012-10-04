#!/bin/bash
#$ -N VirtualSequencer-7
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Agrobacterium_vitis_S4_uid58249.fasta 0.0025 400 40 3432676 100 Reads/48_1.fasta Reads/48_2.fasta &> Logs/48 &
VirtualNextGenSequencer Bacteria-Genomes/Atopobium_parvulum_DSM_20469_uid59195.fasta 0.0025 400 40 3398176 100 Reads/49_1.fasta Reads/49_2.fasta &> Logs/49 &
VirtualNextGenSequencer Bacteria-Genomes/Deinococcus_radiodurans_R1_uid57665.fasta 0.0025 400 40 3364696 100 Reads/50_1.fasta Reads/50_2.fasta &> Logs/50 &
VirtualNextGenSequencer Bacteria-Genomes/Lawsonia_intracellularis_PHE_MN1_00_uid61575.fasta 0.0025 400 40 3332186 100 Reads/51_1.fasta Reads/51_2.fasta &> Logs/51 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_BW2952_uid59391.fasta 0.0025 400 40 3300600 100 Reads/52_1.fasta Reads/52_2.fasta &> Logs/52 &
VirtualNextGenSequencer Bacteria-Genomes/Enterobacter_638_uid58727.fasta 0.0025 400 40 3269897 100 Reads/53_1.fasta Reads/53_2.fasta &> Logs/53 &
VirtualNextGenSequencer Bacteria-Genomes/Acidobacterium_capsulatum_ATCC_51196_uid59127.fasta 0.0025 400 40 3240034 100 Reads/54_1.fasta Reads/54_2.fasta &> Logs/54 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_burgdorferi_B31_uid57581.fasta 0.0025 400 40 3210975 100 Reads/55_1.fasta Reads/55_2.fasta &> Logs/55 &

wait
