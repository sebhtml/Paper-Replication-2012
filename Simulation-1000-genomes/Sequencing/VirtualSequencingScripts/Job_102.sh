#!/bin/bash
#$ -N VirtualSequencer-102
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Photorhabdus_asymbiotica_ATCC_43949_uid59243.fasta 0.0025 400 40 844805 100 Reads/808_1.fasta Reads/808_2.fasta &> Logs/808 &
VirtualNextGenSequencer Bacteria-Genomes/Flavobacteriales_bacterium_HTCC2170_uid51877.fasta 0.0025 400 40 844284 100 Reads/809_1.fasta Reads/809_2.fasta &> Logs/809 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_halifaxensis_HAW_EB4_uid59007.fasta 0.0025 400 40 843763 100 Reads/810_1.fasta Reads/810_2.fasta &> Logs/810 &
VirtualNextGenSequencer Bacteria-Genomes/Planctomyces_brasiliensis_DSM_5305_uid60583.fasta 0.0025 400 40 843243 100 Reads/811_1.fasta Reads/811_2.fasta &> Logs/811 &
VirtualNextGenSequencer Bacteria-Genomes/Mesoplasma_florum_L1_uid58055.fasta 0.0025 400 40 842724 100 Reads/812_1.fasta Reads/812_2.fasta &> Logs/812 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_phytofermentans_ISDg_uid58519.fasta 0.0025 400 40 842207 100 Reads/813_1.fasta Reads/813_2.fasta &> Logs/813 &
VirtualNextGenSequencer Bacteria-Genomes/Streptosporangium_roseum_DSM_43021_uid42521.fasta 0.0025 400 40 841690 100 Reads/814_1.fasta Reads/814_2.fasta &> Logs/814 &
VirtualNextGenSequencer Bacteria-Genomes/Agrobacterium_H13_3_uid63403.fasta 0.0025 400 40 841174 100 Reads/815_1.fasta Reads/815_2.fasta &> Logs/815 &

wait
