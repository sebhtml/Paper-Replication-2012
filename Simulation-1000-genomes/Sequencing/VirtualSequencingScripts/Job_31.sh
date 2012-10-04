#!/bin/bash
#$ -N VirtualSequencer-31
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Actinobacillus_succinogenes_130Z_uid58247.fasta 0.0025 400 40 1547827 100 Reads/240_1.fasta Reads/240_2.fasta &> Logs/240 &
VirtualNextGenSequencer Bacteria-Genomes/Ferrimonas_balearica_DSM_9799_uid53371.fasta 0.0025 400 40 1544626 100 Reads/241_1.fasta Reads/241_2.fasta &> Logs/241 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Sulcia_muelleri_DMIN_uid47075.fasta 0.0025 400 40 1541444 100 Reads/242_1.fasta Reads/242_2.fasta &> Logs/242 &
VirtualNextGenSequencer Bacteria-Genomes/Thermovirga_lienii_DSM_17291_uid77129.fasta 0.0025 400 40 1538282 100 Reads/243_1.fasta Reads/243_2.fasta &> Logs/243 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_bovis_BCG_Pasteur_1173P2_uid58781.fasta 0.0025 400 40 1535140 100 Reads/244_1.fasta Reads/244_2.fasta &> Logs/244 &
VirtualNextGenSequencer Bacteria-Genomes/Ehrlichia_canis_Jake_uid58071.fasta 0.0025 400 40 1532016 100 Reads/245_1.fasta Reads/245_2.fasta &> Logs/245 &
VirtualNextGenSequencer Bacteria-Genomes/Arcobacter_butzleri_RM4018_uid58557.fasta 0.0025 400 40 1528912 100 Reads/246_1.fasta Reads/246_2.fasta &> Logs/246 &
VirtualNextGenSequencer Bacteria-Genomes/Spirochaeta_smaragdinae_DSM_11293_uid51369.fasta 0.0025 400 40 1525826 100 Reads/247_1.fasta Reads/247_2.fasta &> Logs/247 &

wait
