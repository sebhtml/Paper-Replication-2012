#!/bin/bash
#$ -N VirtualSequencer-62
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Psychrobacter_arcticus_273_4_uid58021.fasta 0.0025 400 40 1086617 100 Reads/488_1.fasta Reads/488_2.fasta &> Logs/488 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfurivibrio_alkaliphilus_AHT2_uid49487.fasta 0.0025 400 40 1085508 100 Reads/489_1.fasta Reads/489_2.fasta &> Logs/489 &
VirtualNextGenSequencer Bacteria-Genomes/Novosphingobium_PP1Y_uid67383.fasta 0.0025 400 40 1084402 100 Reads/490_1.fasta Reads/490_2.fasta &> Logs/490 &
VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_pickettii_12D_uid58859.fasta 0.0025 400 40 1083299 100 Reads/491_1.fasta Reads/491_2.fasta &> Logs/491 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_CGSP14_uid59181.fasta 0.0025 400 40 1082200 100 Reads/492_1.fasta Reads/492_2.fasta &> Logs/492 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_loihica_PV_4_uid58349.fasta 0.0025 400 40 1081104 100 Reads/493_1.fasta Reads/493_2.fasta &> Logs/493 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_G27_uid59305.fasta 0.0025 400 40 1080011 100 Reads/494_1.fasta Reads/494_2.fasta &> Logs/494 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_CC9902_uid58323.fasta 0.0025 400 40 1078922 100 Reads/495_1.fasta Reads/495_2.fasta &> Logs/495 &

wait
