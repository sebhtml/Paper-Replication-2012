#!/bin/bash
#$ -N VirtualSequencer-2
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Mesorhizobium_opportunistum_WSM2075_uid40861.fasta 0.0025 400 40 8009578 100 Reads/8_1.fasta Reads/8_2.fasta &> Logs/8 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_resistens_DSM_45100_uid50555.fasta 0.0025 400 40 7598553 100 Reads/9_1.fasta Reads/9_2.fasta &> Logs/9 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_B_TZ1A828_OT_uid59349.fasta 0.0025 400 40 7244936 100 Reads/10_1.fasta Reads/10_2.fasta &> Logs/10 &
VirtualNextGenSequencer Bacteria-Genomes/Ilyobacter_polytropus_DSM_2926_uid59769.fasta 0.0025 400 40 6936498 100 Reads/11_1.fasta Reads/11_2.fasta &> Logs/11 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_PCC_7002_uid59137.fasta 0.0025 400 40 6664372 100 Reads/12_1.fasta Reads/12_2.fasta &> Logs/12 &
VirtualNextGenSequencer Bacteria-Genomes/Halomicrobium_mukohataei_DSM_12286_uid59107.fasta 0.0025 400 40 6421949 100 Reads/13_1.fasta Reads/13_2.fasta &> Logs/13 &
VirtualNextGenSequencer Bacteria-Genomes/Chloroflexus_aggregans_DSM_9485_uid58621.fasta 0.0025 400 40 6204192 100 Reads/14_1.fasta Reads/14_2.fasta &> Logs/14 &
VirtualNextGenSequencer Bacteria-Genomes/Brachybacterium_faecium_DSM_4810_uid58649.fasta 0.0025 400 40 6007183 100 Reads/15_1.fasta Reads/15_2.fasta &> Logs/15 &

wait
