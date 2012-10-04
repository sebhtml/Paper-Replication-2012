#!/bin/bash
#$ -N VirtualSequencer-64
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_campestris_8004_uid57595.fasta 0.0025 400 40 1069265 100 Reads/504_1.fasta Reads/504_2.fasta &> Logs/504 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_ATCC_700669_uid59287.fasta 0.0025 400 40 1068208 100 Reads/505_1.fasta Reads/505_2.fasta &> Logs/505 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_HPAG1_uid58517.fasta 0.0025 400 40 1067154 100 Reads/506_1.fasta Reads/506_2.fasta &> Logs/506 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_leachii_PG50_uid60849.fasta 0.0025 400 40 1066103 100 Reads/507_1.fasta Reads/507_2.fasta &> Logs/507 &
VirtualNextGenSequencer Bacteria-Genomes/Petrotoga_mobilis_SJ95_uid58747.fasta 0.0025 400 40 1065055 100 Reads/508_1.fasta Reads/508_2.fasta &> Logs/508 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_smegmatis_MC2_155_uid57701.fasta 0.0025 400 40 1064010 100 Reads/509_1.fasta Reads/509_2.fasta &> Logs/509 &
VirtualNextGenSequencer Bacteria-Genomes/Legionella_pneumophila_Corby_uid58733.fasta 0.0025 400 40 1062969 100 Reads/510_1.fasta Reads/510_2.fasta &> Logs/510 &
VirtualNextGenSequencer Bacteria-Genomes/Paludibacter_propionicigenes_WB4_uid60725.fasta 0.0025 400 40 1061930 100 Reads/511_1.fasta Reads/511_2.fasta &> Logs/511 &

wait
