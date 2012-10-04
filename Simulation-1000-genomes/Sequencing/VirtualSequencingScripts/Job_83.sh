#!/bin/bash
#$ -N VirtualSequencer-83
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Neorickettsia_risticii_Illinois_uid58889.fasta 0.0025 400 40 937450 100 Reads/656_1.fasta Reads/656_2.fasta &> Logs/656 &
VirtualNextGenSequencer Bacteria-Genomes/Moraxella_catarrhalis_RH4_uid48809.fasta 0.0025 400 40 936738 100 Reads/657_1.fasta Reads/657_2.fasta &> Logs/657 &
VirtualNextGenSequencer Bacteria-Genomes/Akkermansia_muciniphila_ATCC_BAA_835_uid58985.fasta 0.0025 400 40 936027 100 Reads/658_1.fasta Reads/658_2.fasta &> Logs/658 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_mutans_UA159_uid57947.fasta 0.0025 400 40 935317 100 Reads/659_1.fasta Reads/659_2.fasta &> Logs/659 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli__BL21_Gold_DE3_pLysS_AG__uid59245.fasta 0.0025 400 40 934609 100 Reads/660_1.fasta Reads/660_2.fasta &> Logs/660 &
VirtualNextGenSequencer Bacteria-Genomes/Roseobacter_denitrificans_OCh_114_uid58597.fasta 0.0025 400 40 933903 100 Reads/661_1.fasta Reads/661_2.fasta &> Logs/661 &
VirtualNextGenSequencer Bacteria-Genomes/Conexibacter_woesei_DSM_14684_uid43467.fasta 0.0025 400 40 933199 100 Reads/662_1.fasta Reads/662_2.fasta &> Logs/662 &
VirtualNextGenSequencer Bacteria-Genomes/Edwardsiella_ictaluri_93_146_uid59403.fasta 0.0025 400 40 932496 100 Reads/663_1.fasta Reads/663_2.fasta &> Logs/663 &

wait
