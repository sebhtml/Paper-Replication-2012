#!/bin/bash
#$ -N VirtualSequencer-92
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Shewanella_sediminis_HAW_EB3_uid58835.fasta 0.0025 400 40 889953 100 Reads/728_1.fasta Reads/728_2.fasta &> Logs/728 &
VirtualNextGenSequencer Bacteria-Genomes/Polynucleobacter_necessarius_asymbioticus_QLW_P1DMWA_1_uid58611.fasta 0.0025 400 40 889343 100 Reads/729_1.fasta Reads/729_2.fasta &> Logs/729 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_hermsii_DAH_uid59225.fasta 0.0025 400 40 888735 100 Reads/730_1.fasta Reads/730_2.fasta &> Logs/730 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_animalis_lactis_AD011_uid58911.fasta 0.0025 400 40 888128 100 Reads/731_1.fasta Reads/731_2.fasta &> Logs/731 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_subtilis_BSn5_uid62463.fasta 0.0025 400 40 887522 100 Reads/732_1.fasta Reads/732_2.fasta &> Logs/732 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_jejuni_NCTC_11168_uid57587.fasta 0.0025 400 40 886917 100 Reads/733_1.fasta Reads/733_2.fasta &> Logs/733 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_ambifaria_AMMD_uid58303.fasta 0.0025 400 40 886313 100 Reads/734_1.fasta Reads/734_2.fasta &> Logs/734 &
VirtualNextGenSequencer Bacteria-Genomes/Lactococcus_lactis_cremoris_MG1363_uid58837.fasta 0.0025 400 40 885711 100 Reads/735_1.fasta Reads/735_2.fasta &> Logs/735 &

wait
