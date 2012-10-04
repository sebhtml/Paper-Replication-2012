#!/bin/bash
#$ -N VirtualSequencer-11
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Bradyrhizobium_japonicum_USDA_110_uid57599.fasta 0.0025 400 40 2669859 100 Reads/80_1.fasta Reads/80_2.fasta &> Logs/80 &
VirtualNextGenSequencer Bacteria-Genomes/Wolbachia_endosymbiont_of_Drosophila_melanogaster_uid57851.fasta 0.0025 400 40 2653530 100 Reads/81_1.fasta Reads/81_2.fasta &> Logs/81 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_pneumoniae_TW_183_uid57997.fasta 0.0025 400 40 2637496 100 Reads/82_1.fasta Reads/82_2.fasta &> Logs/82 &
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_WH_8102_uid61581.fasta 0.0025 400 40 2621750 100 Reads/83_1.fasta Reads/83_2.fasta &> Logs/83 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_fetus_82_40_uid58545.fasta 0.0025 400 40 2606282 100 Reads/84_1.fasta Reads/84_2.fasta &> Logs/84 &
VirtualNextGenSequencer Bacteria-Genomes/Spirosoma_linguale_DSM_74_uid43413.fasta 0.0025 400 40 2591085 100 Reads/85_1.fasta Reads/85_2.fasta &> Logs/85 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_kefiranofaciens_ZW3_uid67985.fasta 0.0025 400 40 2576151 100 Reads/86_1.fasta Reads/86_2.fasta &> Logs/86 &
VirtualNextGenSequencer Bacteria-Genomes/Halalkalicoccus_jeotgali_B3_uid50305.fasta 0.0025 400 40 2561472 100 Reads/87_1.fasta Reads/87_2.fasta &> Logs/87 &

wait
