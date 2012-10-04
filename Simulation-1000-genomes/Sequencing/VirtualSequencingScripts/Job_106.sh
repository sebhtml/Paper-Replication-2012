#!/bin/bash
#$ -N VirtualSequencer-106
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Saccharophagus_degradans_2_40_uid57921.fasta 0.0025 400 40 828577 100 Reads/840_1.fasta Reads/840_2.fasta &> Logs/840 &
VirtualNextGenSequencer Bacteria-Genomes/Orientia_tsutsugamushi_Boryong_uid61621.fasta 0.0025 400 40 828085 100 Reads/841_1.fasta Reads/841_2.fasta &> Logs/841 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O127_H6_E2348_69_uid59343.fasta 0.0025 400 40 827594 100 Reads/842_1.fasta Reads/842_2.fasta &> Logs/842 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_longum_infantis_157F_uid62693.fasta 0.0025 400 40 827103 100 Reads/843_1.fasta Reads/843_2.fasta &> Logs/843 &
VirtualNextGenSequencer Bacteria-Genomes/Kitasatospora_setae_KM_6054_uid77027.fasta 0.0025 400 40 826614 100 Reads/844_1.fasta Reads/844_2.fasta &> Logs/844 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_pseudintermedius_HKU10_03_uid62125.fasta 0.0025 400 40 826125 100 Reads/845_1.fasta Reads/845_2.fasta &> Logs/845 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_lari_RM2100_uid58115.fasta 0.0025 400 40 825637 100 Reads/846_1.fasta Reads/846_2.fasta &> Logs/846 &
VirtualNextGenSequencer Bacteria-Genomes/Magnetococcus_MC_1_uid57833.fasta 0.0025 400 40 825150 100 Reads/847_1.fasta Reads/847_2.fasta &> Logs/847 &

wait
