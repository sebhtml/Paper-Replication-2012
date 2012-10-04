#!/bin/bash
#$ -N VirtualSequencer-44
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_X513_uid53065.fasta 0.0025 400 40 1293664 100 Reads/344_1.fasta Reads/344_2.fasta &> Logs/344 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_KIM_10_uid57875.fasta 0.0025 400 40 1291793 100 Reads/345_1.fasta Reads/345_2.fasta &> Logs/345 &
VirtualNextGenSequencer Bacteria-Genomes/Weeksella_virosa_DSM_16922_uid63627.fasta 0.0025 400 40 1289930 100 Reads/346_1.fasta Reads/346_2.fasta &> Logs/346 &
VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola_Cc__Cinara_cedri__uid58579.fasta 0.0025 400 40 1288075 100 Reads/347_1.fasta Reads/347_2.fasta &> Logs/347 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_pseudomallei_668_uid58389.fasta 0.0025 400 40 1286229 100 Reads/348_1.fasta Reads/348_2.fasta &> Logs/348 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Typhi_CT18_uid57793.fasta 0.0025 400 40 1284390 100 Reads/349_1.fasta Reads/349_2.fasta &> Logs/349 &
VirtualNextGenSequencer Bacteria-Genomes/Caulobacter_K31_uid58551.fasta 0.0025 400 40 1282559 100 Reads/350_1.fasta Reads/350_2.fasta &> Logs/350 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_magneticus_RS_1_uid59309.fasta 0.0025 400 40 1280736 100 Reads/351_1.fasta Reads/351_2.fasta &> Logs/351 &

wait
