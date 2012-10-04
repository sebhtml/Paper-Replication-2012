#!/bin/bash
#$ -N VirtualSequencer-123
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Meiothermus_silvanus_DSM_9946_uid49485.fasta 0.0025 400 40 768747 100 Reads/976_1.fasta Reads/976_2.fasta &> Logs/976 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_gallolyticus_UCN34_uid46061.fasta 0.0025 400 40 768354 100 Reads/977_1.fasta Reads/977_2.fasta &> Logs/977 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Newport_SL254_uid58831.fasta 0.0025 400 40 767962 100 Reads/978_1.fasta Reads/978_2.fasta &> Logs/978 &
VirtualNextGenSequencer Bacteria-Genomes/Gemmatimonas_aurantiaca_T_27_uid58813.fasta 0.0025 400 40 767570 100 Reads/979_1.fasta Reads/979_2.fasta &> Logs/979 &
VirtualNextGenSequencer Bacteria-Genomes/Thiomicrospira_crunogena_XCL_2_uid58183.fasta 0.0025 400 40 767178 100 Reads/980_1.fasta Reads/980_2.fasta &> Logs/980 &
VirtualNextGenSequencer Bacteria-Genomes/Eubacterium_rectale_ATCC_33656_uid59169.fasta 0.0025 400 40 766788 100 Reads/981_1.fasta Reads/981_2.fasta &> Logs/981 &
VirtualNextGenSequencer Bacteria-Genomes/Thermincola_potens_JR_uid48823.fasta 0.0025 400 40 766398 100 Reads/982_1.fasta Reads/982_2.fasta &> Logs/982 &
VirtualNextGenSequencer Bacteria-Genomes/Vulcanisaeta_distributa_DSM_14429_uid52827.fasta 0.0025 400 40 766008 100 Reads/983_1.fasta Reads/983_2.fasta &> Logs/983 &

wait
