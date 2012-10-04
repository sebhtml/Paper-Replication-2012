#!/bin/bash
#$ -N VirtualSequencer-20
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methanohalophilus_mahii_DSM_5219_uid47313.fasta 0.0025 400 40 1942608 100 Reads/152_1.fasta Reads/152_2.fasta &> Logs/152 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_penetrans_HF_2_uid57729.fasta 0.0025 400 40 1936291 100 Reads/153_1.fasta Reads/153_2.fasta &> Logs/153 &
VirtualNextGenSequencer Bacteria-Genomes/Thermodesulfobium_narugense_DSM_14796_uid66601.fasta 0.0025 400 40 1930034 100 Reads/154_1.fasta Reads/154_2.fasta &> Logs/154 &
VirtualNextGenSequencer Bacteria-Genomes/_Nostoc_azollae__0708_uid49725.fasta 0.0025 400 40 1923838 100 Reads/155_1.fasta Reads/155_2.fasta &> Logs/155 &
VirtualNextGenSequencer Bacteria-Genomes/Methanothermus_fervidus_DSM_2088_uid60167.fasta 0.0025 400 40 1917702 100 Reads/156_1.fasta Reads/156_2.fasta &> Logs/156 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_suis_P1_7_uid32235.fasta 0.0025 400 40 1911623 100 Reads/157_1.fasta Reads/157_2.fasta &> Logs/157 &
VirtualNextGenSequencer Bacteria-Genomes/Blattabacterium__Blattella_germanica__Bge_uid41533.fasta 0.0025 400 40 1905603 100 Reads/158_1.fasta Reads/158_2.fasta &> Logs/158 &
VirtualNextGenSequencer Bacteria-Genomes/Leuconostoc_citreum_KM20_uid58481.fasta 0.0025 400 40 1899638 100 Reads/159_1.fasta Reads/159_2.fasta &> Logs/159 &

wait
