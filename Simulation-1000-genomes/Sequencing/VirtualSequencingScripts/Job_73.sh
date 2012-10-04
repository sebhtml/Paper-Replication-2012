#!/bin/bash
#$ -N VirtualSequencer-73
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_influenzae_Rd_KW20_uid57771.fasta 0.0025 400 40 1000329 100 Reads/576_1.fasta Reads/576_2.fasta &> Logs/576 &
VirtualNextGenSequencer Bacteria-Genomes/Eubacterium_eligens_ATCC_27750_uid59171.fasta 0.0025 400 40 999464 100 Reads/577_1.fasta Reads/577_2.fasta &> Logs/577 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_sulfurreducens_PCA_uid57743.fasta 0.0025 400 40 998600 100 Reads/578_1.fasta Reads/578_2.fasta &> Logs/578 &
VirtualNextGenSequencer Bacteria-Genomes/Methylocella_silvestris_BL2_uid59433.fasta 0.0025 400 40 997739 100 Reads/579_1.fasta Reads/579_2.fasta &> Logs/579 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_IAI1_uid59377.fasta 0.0025 400 40 996880 100 Reads/580_1.fasta Reads/580_2.fasta &> Logs/580 &
VirtualNextGenSequencer Bacteria-Genomes/Ignicoccus_hospitalis_KIN4_I_uid58365.fasta 0.0025 400 40 996023 100 Reads/581_1.fasta Reads/581_2.fasta &> Logs/581 &
VirtualNextGenSequencer Bacteria-Genomes/Delftia_Cs1_4_uid67319.fasta 0.0025 400 40 995168 100 Reads/582_1.fasta Reads/582_2.fasta &> Logs/582 &
VirtualNextGenSequencer Bacteria-Genomes/Micromonospora_L5_uid45895.fasta 0.0025 400 40 994316 100 Reads/583_1.fasta Reads/583_2.fasta &> Logs/583 &

wait
