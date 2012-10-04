#!/bin/bash
#$ -N VirtualSequencer-41
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_tuberculosis_H37Ra_uid58853.fasta 0.0025 400 40 1341153 100 Reads/320_1.fasta Reads/320_2.fasta &> Logs/320 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O157_H7_EDL933_uid57831.fasta 0.0025 400 40 1339069 100 Reads/321_1.fasta Reads/321_2.fasta &> Logs/321 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_putida_KT2440_uid57843.fasta 0.0025 400 40 1336995 100 Reads/322_1.fasta Reads/322_2.fasta &> Logs/322 &
VirtualNextGenSequencer Bacteria-Genomes/Rothia_dentocariosa_ATCC_17931_uid49331.fasta 0.0025 400 40 1334930 100 Reads/323_1.fasta Reads/323_2.fasta &> Logs/323 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_epidermidis_ATCC_12228_uid57861.fasta 0.0025 400 40 1332874 100 Reads/324_1.fasta Reads/324_2.fasta &> Logs/324 &
VirtualNextGenSequencer Bacteria-Genomes/Thermobifida_fusca_YX_uid57703.fasta 0.0025 400 40 1330828 100 Reads/325_1.fasta Reads/325_2.fasta &> Logs/325 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_jejuni_doylei_269_97_uid58671.fasta 0.0025 400 40 1328792 100 Reads/326_1.fasta Reads/326_2.fasta &> Logs/326 &
VirtualNextGenSequencer Bacteria-Genomes/Robiginitalea_biformata_HTCC2501_uid58285.fasta 0.0025 400 40 1326765 100 Reads/327_1.fasta Reads/327_2.fasta &> Logs/327 &

wait
