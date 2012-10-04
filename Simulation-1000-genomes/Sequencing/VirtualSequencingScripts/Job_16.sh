#!/bin/bash
#$ -N VirtualSequencer-16
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Alteromonas_SN2_uid67349.fasta 0.0025 400 40 2184430 100 Reads/120_1.fasta Reads/120_2.fasta &> Logs/120 &
VirtualNextGenSequencer Bacteria-Genomes/Anaerococcus_prevotii_DSM_20548_uid59219.fasta 0.0025 400 40 2175459 100 Reads/121_1.fasta Reads/121_2.fasta &> Logs/121 &
VirtualNextGenSequencer Bacteria-Genomes/Isosphaera_pallida_ATCC_43644_uid62207.fasta 0.0025 400 40 2166598 100 Reads/122_1.fasta Reads/122_2.fasta &> Logs/122 &
VirtualNextGenSequencer Bacteria-Genomes/Thermomicrobium_roseum_DSM_5159_uid59341.fasta 0.0025 400 40 2157844 100 Reads/123_1.fasta Reads/123_2.fasta &> Logs/123 &
VirtualNextGenSequencer Bacteria-Genomes/Sanguibacter_keddieii_DSM_10542_uid40845.fasta 0.0025 400 40 2149195 100 Reads/124_1.fasta Reads/124_2.fasta &> Logs/124 &
VirtualNextGenSequencer Bacteria-Genomes/Acidimicrobium_ferrooxidans_DSM_10331_uid59215.fasta 0.0025 400 40 2140650 100 Reads/125_1.fasta Reads/125_2.fasta &> Logs/125 &
VirtualNextGenSequencer Bacteria-Genomes/Gardnerella_vaginalis_ATCC_14019_uid55487.fasta 0.0025 400 40 2132205 100 Reads/126_1.fasta Reads/126_2.fasta &> Logs/126 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_kroppenstedtii_DSM_44385_uid59411.fasta 0.0025 400 40 2123860 100 Reads/127_1.fasta Reads/127_2.fasta &> Logs/127 &

wait
