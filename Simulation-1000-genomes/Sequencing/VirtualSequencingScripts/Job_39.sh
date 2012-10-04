#!/bin/bash
#$ -N VirtualSequencer-39
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Metallosphaera_sedula_DSM_5348_uid58717.fasta 0.0025 400 40 1375881 100 Reads/304_1.fasta Reads/304_2.fasta &> Logs/304 &
VirtualNextGenSequencer Bacteria-Genomes/Natronomonas_pharaonis_DSM_2160_uid58435.fasta 0.0025 400 40 1373631 100 Reads/305_1.fasta Reads/305_2.fasta &> Logs/305 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfococcus_oleovorans_Hxd3_uid58777.fasta 0.0025 400 40 1371392 100 Reads/306_1.fasta Reads/306_2.fasta &> Logs/306 &
VirtualNextGenSequencer Bacteria-Genomes/Ketogulonicigenium_vulgare_Y25_uid59581.fasta 0.0025 400 40 1369164 100 Reads/307_1.fasta Reads/307_2.fasta &> Logs/307 &
VirtualNextGenSequencer Bacteria-Genomes/Cyanothece_PCC_8801_uid59027.fasta 0.0025 400 40 1366947 100 Reads/308_1.fasta Reads/308_2.fasta &> Logs/308 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_JH9_uid58455.fasta 0.0025 400 40 1364740 100 Reads/309_1.fasta Reads/309_2.fasta &> Logs/309 &
VirtualNextGenSequencer Bacteria-Genomes/Spirochaeta_thermophila_DSM_6192_uid53037.fasta 0.0025 400 40 1362545 100 Reads/310_1.fasta Reads/310_2.fasta &> Logs/310 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_agalactiae_PG2_uid61619.fasta 0.0025 400 40 1360359 100 Reads/311_1.fasta Reads/311_2.fasta &> Logs/311 &

wait
