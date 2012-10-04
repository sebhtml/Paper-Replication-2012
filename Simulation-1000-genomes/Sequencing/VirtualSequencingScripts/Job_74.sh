#!/bin/bash
#$ -N VirtualSequencer-74
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methylibium_petroleiphilum_PM1_uid58085.fasta 0.0025 400 40 993466 100 Reads/584_1.fasta Reads/584_2.fasta &> Logs/584 &
VirtualNextGenSequencer Bacteria-Genomes/Terriglobus_saanensis_SP1PR4_uid53251.fasta 0.0025 400 40 992618 100 Reads/585_1.fasta Reads/585_2.fasta &> Logs/585 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_campestris_B100_uid61643.fasta 0.0025 400 40 991772 100 Reads/586_1.fasta Reads/586_2.fasta &> Logs/586 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_rhamnosus_Lc_705_uid59315.fasta 0.0025 400 40 990928 100 Reads/587_1.fasta Reads/587_2.fasta &> Logs/587 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_abortus_S26_3_uid57963.fasta 0.0025 400 40 990087 100 Reads/588_1.fasta Reads/588_2.fasta &> Logs/588 &
VirtualNextGenSequencer Bacteria-Genomes/Pantoea_At_9b_uid55845.fasta 0.0025 400 40 989247 100 Reads/589_1.fasta Reads/589_2.fasta &> Logs/589 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_lovleyi_SZ_uid58713.fasta 0.0025 400 40 988410 100 Reads/590_1.fasta Reads/590_2.fasta &> Logs/590 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodobacter_capsulatus_SB_1003_uid47509.fasta 0.0025 400 40 987575 100 Reads/591_1.fasta Reads/591_2.fasta &> Logs/591 &

wait
