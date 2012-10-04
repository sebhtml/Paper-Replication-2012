#!/bin/bash
#$ -N VirtualSequencer-50
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_cenocepacia_MC0_3_uid58769.fasta 0.0025 400 40 1212089 100 Reads/392_1.fasta Reads/392_2.fasta &> Logs/392 &
VirtualNextGenSequencer Bacteria-Genomes/Caldivirga_maquilingensis_IC_167_uid58711.fasta 0.0025 400 40 1210550 100 Reads/393_1.fasta Reads/393_2.fasta &> Logs/393 &
VirtualNextGenSequencer Bacteria-Genomes/Croceibacter_atlanticus_HTCC2559_uid49661.fasta 0.0025 400 40 1209017 100 Reads/394_1.fasta Reads/394_2.fasta &> Logs/394 &
VirtualNextGenSequencer Bacteria-Genomes/Agrobacterium_tumefaciens_C58_uid57865.fasta 0.0025 400 40 1207489 100 Reads/395_1.fasta Reads/395_2.fasta &> Logs/395 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_difficile_630_uid57679.fasta 0.0025 400 40 1205968 100 Reads/396_1.fasta Reads/396_2.fasta &> Logs/396 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_helveticus_DPC_4571_uid58761.fasta 0.0025 400 40 1204452 100 Reads/397_1.fasta Reads/397_2.fasta &> Logs/397 &
VirtualNextGenSequencer Bacteria-Genomes/Listeria_monocytogenes_08_5923_uid43727.fasta 0.0025 400 40 1202941 100 Reads/398_1.fasta Reads/398_2.fasta &> Logs/398 &
VirtualNextGenSequencer Bacteria-Genomes/Rhizobium_leguminosarum_bv__trifolii_WSM1325_uid58991.fasta 0.0025 400 40 1201437 100 Reads/399_1.fasta Reads/399_2.fasta &> Logs/399 &

wait
