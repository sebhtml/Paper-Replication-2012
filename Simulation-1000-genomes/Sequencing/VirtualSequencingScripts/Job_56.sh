#!/bin/bash
#$ -N VirtualSequencer-56
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Frankia_EAN1pec_uid58367.fasta 0.0025 400 40 1144225 100 Reads/440_1.fasta Reads/440_2.fasta &> Logs/440 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_sanguinis_SK36_uid58381.fasta 0.0025 400 40 1142930 100 Reads/441_1.fasta Reads/441_2.fasta &> Logs/441 &
VirtualNextGenSequencer Bacteria-Genomes/Syntrophothermus_lipocalidus_DSM_12680_uid49527.fasta 0.0025 400 40 1141640 100 Reads/442_1.fasta Reads/442_2.fasta &> Logs/442 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_pseudofirmus_OF4_uid45847.fasta 0.0025 400 40 1140353 100 Reads/443_1.fasta Reads/443_2.fasta &> Logs/443 &
VirtualNextGenSequencer Bacteria-Genomes/Pirellula_staleyi_DSM_6068_uid43209.fasta 0.0025 400 40 1139071 100 Reads/444_1.fasta Reads/444_2.fasta &> Logs/444 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_Mu3_uid58817.fasta 0.0025 400 40 1137794 100 Reads/445_1.fasta Reads/445_2.fasta &> Logs/445 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_turicatae_91E135_uid58311.fasta 0.0025 400 40 1136520 100 Reads/446_1.fasta Reads/446_2.fasta &> Logs/446 &
VirtualNextGenSequencer Bacteria-Genomes/Frankia_symbiont_of_Datisca_glomerata_uid46257.fasta 0.0025 400 40 1135251 100 Reads/447_1.fasta Reads/447_2.fasta &> Logs/447 &

wait
