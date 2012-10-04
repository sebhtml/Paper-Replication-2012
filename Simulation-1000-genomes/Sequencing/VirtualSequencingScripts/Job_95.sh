#!/bin/bash
#$ -N VirtualSequencer-95
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermosynechococcus_elongatus_BP_1_uid57907.fasta 0.0025 400 40 875656 100 Reads/752_1.fasta Reads/752_2.fasta &> Logs/752 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotalea_psychrophila_LSv54_uid58153.fasta 0.0025 400 40 875075 100 Reads/753_1.fasta Reads/753_2.fasta &> Logs/753 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_vietnamiensis_G4_uid58075.fasta 0.0025 400 40 874495 100 Reads/754_1.fasta Reads/754_2.fasta &> Logs/754 &
VirtualNextGenSequencer Bacteria-Genomes/Gardnerella_vaginalis_409_05_uid43211.fasta 0.0025 400 40 873917 100 Reads/755_1.fasta Reads/755_2.fasta &> Logs/755 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Midichloria_mitochondrii_IricVA_uid68687.fasta 0.0025 400 40 873339 100 Reads/756_1.fasta Reads/756_2.fasta &> Logs/756 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_bissettii_DN127_uid71231.fasta 0.0025 400 40 872763 100 Reads/757_1.fasta Reads/757_2.fasta &> Logs/757 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_africanum_GM041182_uid68839.fasta 0.0025 400 40 872188 100 Reads/758_1.fasta Reads/758_2.fasta &> Logs/758 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfolobus_tokodaii_7_uid57807.fasta 0.0025 400 40 871614 100 Reads/759_1.fasta Reads/759_2.fasta &> Logs/759 &

wait
