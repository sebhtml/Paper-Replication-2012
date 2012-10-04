#!/bin/bash
#$ -N VirtualSequencer-10
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_variabile_DSM_44702_uid62003.fasta 0.0025 400 40 2812351 100 Reads/72_1.fasta Reads/72_2.fasta &> Logs/72 &
VirtualNextGenSequencer Bacteria-Genomes/Listeria_welshimeri_serovar_6b_SLCC5334_uid61605.fasta 0.0025 400 40 2793284 100 Reads/73_1.fasta Reads/73_2.fasta &> Logs/73 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_oryzae_MAFF_311018_uid58547.fasta 0.0025 400 40 2774599 100 Reads/74_1.fasta Reads/74_2.fasta &> Logs/74 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_extorquens_DM4_uid61617.fasta 0.0025 400 40 2756285 100 Reads/75_1.fasta Reads/75_2.fasta &> Logs/75 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodococcus_erythropolis_PR4_uid59019.fasta 0.0025 400 40 2738328 100 Reads/76_1.fasta Reads/76_2.fasta &> Logs/76 &
VirtualNextGenSequencer Bacteria-Genomes/Thiobacillus_denitrificans_ATCC_25259_uid58189.fasta 0.0025 400 40 2720718 100 Reads/77_1.fasta Reads/77_2.fasta &> Logs/77 &
VirtualNextGenSequencer Bacteria-Genomes/_Cellvibrio__gilvus_ATCC_13127_uid68143.fasta 0.0025 400 40 2703444 100 Reads/78_1.fasta Reads/78_2.fasta &> Logs/78 &
VirtualNextGenSequencer Bacteria-Genomes/Bartonella_henselae_Houston_1_uid57745.fasta 0.0025 400 40 2686494 100 Reads/79_1.fasta Reads/79_2.fasta &> Logs/79 &

wait
