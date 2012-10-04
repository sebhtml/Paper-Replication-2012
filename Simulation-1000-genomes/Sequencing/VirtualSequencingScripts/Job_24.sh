#!/bin/bash
#$ -N VirtualSequencer-24
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Beutenbergia_cavernae_DSM_12333_uid59047.fasta 0.0025 400 40 1766628 100 Reads/184_1.fasta Reads/184_2.fasta &> Logs/184 &
VirtualNextGenSequencer Bacteria-Genomes/Haliscomenobacter_hydrossis_DSM_1100_uid66777.fasta 0.0025 400 40 1761872 100 Reads/185_1.fasta Reads/185_2.fasta &> Logs/185 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_buchneri_NRRL_B_30929_uid66205.fasta 0.0025 400 40 1757155 100 Reads/186_1.fasta Reads/186_2.fasta &> Logs/186 &
VirtualNextGenSequencer Bacteria-Genomes/Methanocorpusculum_labreanum_Z_uid58785.fasta 0.0025 400 40 1752476 100 Reads/187_1.fasta Reads/187_2.fasta &> Logs/187 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_mallei_ATCC_23344_uid57725.fasta 0.0025 400 40 1747833 100 Reads/188_1.fasta Reads/188_2.fasta &> Logs/188 &
VirtualNextGenSequencer Bacteria-Genomes/Caldicellulosiruptor_lactoaceticus_6A_uid60575.fasta 0.0025 400 40 1743228 100 Reads/189_1.fasta Reads/189_2.fasta &> Logs/189 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_vanbaalenii_PYR_1_uid58463.fasta 0.0025 400 40 1738658 100 Reads/190_1.fasta Reads/190_2.fasta &> Logs/190 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_MW2_uid57903.fasta 0.0025 400 40 1734125 100 Reads/191_1.fasta Reads/191_2.fasta &> Logs/191 &

wait
