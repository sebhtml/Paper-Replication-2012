#!/bin/bash
#$ -N VirtualSequencer-90
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Ignisphaera_aggregans_DSM_17230_uid51875.fasta 0.0025 400 40 899883 100 Reads/712_1.fasta Reads/712_2.fasta &> Logs/712 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_ED98_uid41455.fasta 0.0025 400 40 899253 100 Reads/713_1.fasta Reads/713_2.fasta &> Logs/713 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_bovis_PG45_uid60859.fasta 0.0025 400 40 898624 100 Reads/714_1.fasta Reads/714_2.fasta &> Logs/714 &
VirtualNextGenSequencer Bacteria-Genomes/Haloquadratum_walsbyi_DSM_16790_uid58673.fasta 0.0025 400 40 897996 100 Reads/715_1.fasta Reads/715_2.fasta &> Logs/715 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_Pestoides_F_uid58619.fasta 0.0025 400 40 897370 100 Reads/716_1.fasta Reads/716_2.fasta &> Logs/716 &
VirtualNextGenSequencer Bacteria-Genomes/Elusimicrobium_minutum_Pei191_uid58949.fasta 0.0025 400 40 896744 100 Reads/717_1.fasta Reads/717_2.fasta &> Logs/717 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylothermus_hellenicus_DSM_12710_uid45893.fasta 0.0025 400 40 896121 100 Reads/718_1.fasta Reads/718_2.fasta &> Logs/718 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodobacter_sphaeroides_2_4_1_uid57653.fasta 0.0025 400 40 895498 100 Reads/719_1.fasta Reads/719_2.fasta &> Logs/719 &

wait
