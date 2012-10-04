#!/bin/bash
#$ -N VirtualSequencer-86
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermodesulfovibrio_yellowstonii_DSM_11347_uid59257.fasta 0.0025 400 40 920783 100 Reads/680_1.fasta Reads/680_2.fasta &> Logs/680 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_Antiqua_uid58607.fasta 0.0025 400 40 920108 100 Reads/681_1.fasta Reads/681_2.fasta &> Logs/681 &
VirtualNextGenSequencer Bacteria-Genomes/Kocuria_rhizophila_DC2201_uid59099.fasta 0.0025 400 40 919434 100 Reads/682_1.fasta Reads/682_2.fasta &> Logs/682 &
VirtualNextGenSequencer Bacteria-Genomes/Bacteroides_vulgatus_ATCC_8482_uid58253.fasta 0.0025 400 40 918762 100 Reads/683_1.fasta Reads/683_2.fasta &> Logs/683 &
VirtualNextGenSequencer Bacteria-Genomes/Baumannia_cicadellinicola_Hc__Homalodisca_coagulata__uid58111.fasta 0.0025 400 40 918091 100 Reads/684_1.fasta Reads/684_2.fasta &> Logs/684 &
VirtualNextGenSequencer Bacteria-Genomes/Truepera_radiovictrix_DSM_17093_uid49533.fasta 0.0025 400 40 917421 100 Reads/685_1.fasta Reads/685_2.fasta &> Logs/685 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_JV3_uid72473.fasta 0.0025 400 40 916753 100 Reads/686_1.fasta Reads/686_2.fasta &> Logs/686 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudoalteromonas_SM9913_uid61247.fasta 0.0025 400 40 916087 100 Reads/687_1.fasta Reads/687_2.fasta &> Logs/687 &

wait
