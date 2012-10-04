#!/bin/bash
#$ -N VirtualSequencer-47
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Methylomonas_methanica_MC09_uid67363.fasta 0.0025 400 40 1250886 100 Reads/368_1.fasta Reads/368_2.fasta &> Logs/368 &
VirtualNextGenSequencer Bacteria-Genomes/Thermosediminibacter_oceani_DSM_16646_uid51421.fasta 0.0025 400 40 1249194 100 Reads/369_1.fasta Reads/369_2.fasta &> Logs/369 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_selenitireducens_MLS10_uid49513.fasta 0.0025 400 40 1247510 100 Reads/370_1.fasta Reads/370_2.fasta &> Logs/370 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfobulbus_propionicus_DSM_2032_uid62265.fasta 0.0025 400 40 1245832 100 Reads/371_1.fasta Reads/371_2.fasta &> Logs/371 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotomaculum_acetoxidans_DSM_771_uid59109.fasta 0.0025 400 40 1244161 100 Reads/372_1.fasta Reads/372_2.fasta &> Logs/372 &
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_MIT_9301_uid58437.fasta 0.0025 400 40 1242496 100 Reads/373_1.fasta Reads/373_2.fasta &> Logs/373 &
VirtualNextGenSequencer Bacteria-Genomes/Shigella_boydii_Sb227_uid58215.fasta 0.0025 400 40 1240838 100 Reads/374_1.fasta Reads/374_2.fasta &> Logs/374 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_garinii_PBi_uid58125.fasta 0.0025 400 40 1239187 100 Reads/375_1.fasta Reads/375_2.fasta &> Logs/375 &

wait
