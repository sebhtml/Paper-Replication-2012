#!/bin/bash
#$ -N VirtualSequencer-59
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_RCC307_uid61609.fasta 0.0025 400 40 1114306 100 Reads/464_1.fasta Reads/464_2.fasta &> Logs/464 &
VirtualNextGenSequencer Bacteria-Genomes/Klebsiella_variicola_At_22_uid42113.fasta 0.0025 400 40 1113110 100 Reads/465_1.fasta Reads/465_2.fasta &> Logs/465 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_rhamnosus_GG_uid59313.fasta 0.0025 400 40 1111917 100 Reads/466_1.fasta Reads/466_2.fasta &> Logs/466 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Typhimurium_LT2_uid57799.fasta 0.0025 400 40 1110729 100 Reads/467_1.fasta Reads/467_2.fasta &> Logs/467 &
VirtualNextGenSequencer Bacteria-Genomes/Streptobacillus_moniliformis_DSM_12112_uid41863.fasta 0.0025 400 40 1109544 100 Reads/468_1.fasta Reads/468_2.fasta &> Logs/468 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_E24377A_uid58395.fasta 0.0025 400 40 1108363 100 Reads/469_1.fasta Reads/469_2.fasta &> Logs/469 &
VirtualNextGenSequencer Bacteria-Genomes/Rhizobium_etli_CIAT_652_uid59115.fasta 0.0025 400 40 1107186 100 Reads/470_1.fasta Reads/470_2.fasta &> Logs/470 &
VirtualNextGenSequencer Bacteria-Genomes/Stackebrandtia_nassauensis_DSM_44728_uid46663.fasta 0.0025 400 40 1106012 100 Reads/471_1.fasta Reads/471_2.fasta &> Logs/471 &

wait
