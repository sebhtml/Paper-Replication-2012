#!/bin/bash
#$ -N VirtualSequencer-97
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_P12_uid59327.fasta 0.0025 400 40 866498 100 Reads/768_1.fasta Reads/768_2.fasta &> Logs/768 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_suis_05ZYH33_uid58663.fasta 0.0025 400 40 865935 100 Reads/769_1.fasta Reads/769_2.fasta &> Logs/769 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_ED1a_uid59379.fasta 0.0025 400 40 865374 100 Reads/770_1.fasta Reads/770_2.fasta &> Logs/770 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_brockii_finnii_Ako_1_uid55639.fasta 0.0025 400 40 864813 100 Reads/771_1.fasta Reads/771_2.fasta &> Logs/771 &
VirtualNextGenSequencer Bacteria-Genomes/Arthrobacter_arilaitensis_Re117_uid53509.fasta 0.0025 400 40 864253 100 Reads/772_1.fasta Reads/772_2.fasta &> Logs/772 &
VirtualNextGenSequencer Bacteria-Genomes/Methanopyrus_kandleri_AV19_uid57883.fasta 0.0025 400 40 863695 100 Reads/773_1.fasta Reads/773_2.fasta &> Logs/773 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_bifidum_S17_uid59545.fasta 0.0025 400 40 863138 100 Reads/774_1.fasta Reads/774_2.fasta &> Logs/774 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_UMN026_uid62981.fasta 0.0025 400 40 862581 100 Reads/775_1.fasta Reads/775_2.fasta &> Logs/775 &

wait
