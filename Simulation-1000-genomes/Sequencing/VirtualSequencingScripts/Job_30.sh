#!/bin/bash
#$ -N VirtualSequencer-30
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_B_Jali20_OT_uid59351.fasta 0.0025 400 40 1574175 100 Reads/232_1.fasta Reads/232_2.fasta &> Logs/232 &
VirtualNextGenSequencer Bacteria-Genomes/Thermaerobacter_marianensis_DSM_12885_uid61727.fasta 0.0025 400 40 1570807 100 Reads/233_1.fasta Reads/233_2.fasta &> Logs/233 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_maripaludis_C6_uid58947.fasta 0.0025 400 40 1567462 100 Reads/234_1.fasta Reads/234_2.fasta &> Logs/234 &
VirtualNextGenSequencer Bacteria-Genomes/Pelotomaculum_thermopropionicum_SI_uid58877.fasta 0.0025 400 40 1564137 100 Reads/235_1.fasta Reads/235_2.fasta &> Logs/235 &
VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_naphthophila_RKU_10_uid42777.fasta 0.0025 400 40 1560834 100 Reads/236_1.fasta Reads/236_2.fasta &> Logs/236 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrobaculum_calidifontis_JCM_11548_uid58787.fasta 0.0025 400 40 1557551 100 Reads/237_1.fasta Reads/237_2.fasta &> Logs/237 &
VirtualNextGenSequencer Bacteria-Genomes/Ehrlichia_ruminantium_Welgevonden_uid58243.fasta 0.0025 400 40 1554290 100 Reads/238_1.fasta Reads/238_2.fasta &> Logs/238 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_epidermidis_RP62A_uid57663.fasta 0.0025 400 40 1551048 100 Reads/239_1.fasta Reads/239_2.fasta &> Logs/239 &

wait
