#!/bin/bash
#$ -N VirtualSequencer-122
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Meiothermus_ruber_DSM_1279_uid46661.fasta 0.0025 400 40 771914 100 Reads/968_1.fasta Reads/968_2.fasta &> Logs/968 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_jejuni_81_176_uid58503.fasta 0.0025 400 40 771516 100 Reads/969_1.fasta Reads/969_2.fasta &> Logs/969 &
VirtualNextGenSequencer Bacteria-Genomes/Caldicellulosiruptor_hydrothermalis_108_uid60157.fasta 0.0025 400 40 771119 100 Reads/970_1.fasta Reads/970_2.fasta &> Logs/970 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_Taiwan19F_14_uid59119.fasta 0.0025 400 40 770722 100 Reads/971_1.fasta Reads/971_2.fasta &> Logs/971 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_536_uid58531.fasta 0.0025 400 40 770326 100 Reads/972_1.fasta Reads/972_2.fasta &> Logs/972 &
VirtualNextGenSequencer Bacteria-Genomes/Deinococcus_maricopensis_DSM_21211_uid62225.fasta 0.0025 400 40 769930 100 Reads/973_1.fasta Reads/973_2.fasta &> Logs/973 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_suis_BM407_uid59321.fasta 0.0025 400 40 769535 100 Reads/974_1.fasta Reads/974_2.fasta &> Logs/974 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_thuringiensis_serovar_konkukian_97_27_uid58089.fasta 0.0025 400 40 769141 100 Reads/975_1.fasta Reads/975_2.fasta &> Logs/975 &

wait
