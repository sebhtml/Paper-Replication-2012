#!/bin/bash
#$ -N VirtualSequencer-94
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_multivorans_ATCC_17616_uid58909.fasta 0.0025 400 40 880345 100 Reads/744_1.fasta Reads/744_2.fasta &> Logs/744 &
VirtualNextGenSequencer Bacteria-Genomes/Collimonas_fungivorans_Ter331_uid70793.fasta 0.0025 400 40 879754 100 Reads/745_1.fasta Reads/745_2.fasta &> Logs/745 &
VirtualNextGenSequencer Bacteria-Genomes/Nanoarchaeum_equitans_Kin4_M_uid58009.fasta 0.0025 400 40 879165 100 Reads/746_1.fasta Reads/746_2.fasta &> Logs/746 &
VirtualNextGenSequencer Bacteria-Genomes/Butyrivibrio_proteoclasticus_B316_uid51489.fasta 0.0025 400 40 878578 100 Reads/747_1.fasta Reads/747_2.fasta &> Logs/747 &
VirtualNextGenSequencer Bacteria-Genomes/Streptomyces_SirexAA_E_uid72627.fasta 0.0025 400 40 877991 100 Reads/748_1.fasta Reads/748_2.fasta &> Logs/748 &
VirtualNextGenSequencer Bacteria-Genomes/Shigella_flexneri_2a_301_uid62907.fasta 0.0025 400 40 877405 100 Reads/749_1.fasta Reads/749_2.fasta &> Logs/749 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_glumae_BGR1_uid59397.fasta 0.0025 400 40 876821 100 Reads/750_1.fasta Reads/750_2.fasta &> Logs/750 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_L2c_uid68843.fasta 0.0025 400 40 876238 100 Reads/751_1.fasta Reads/751_2.fasta &> Logs/751 &

wait
