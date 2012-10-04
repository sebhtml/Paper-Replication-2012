#!/bin/bash
#$ -N VirtualSequencer-48
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Mesorhizobium_ciceri_biovar_biserrulae_WSM1271_uid62101.fasta 0.0025 400 40 1237543 100 Reads/376_1.fasta Reads/376_2.fasta &> Logs/376 &
VirtualNextGenSequencer Bacteria-Genomes/Lysinibacillus_sphaericus_C3_41_uid58945.fasta 0.0025 400 40 1235905 100 Reads/377_1.fasta Reads/377_2.fasta &> Logs/377 &
VirtualNextGenSequencer Bacteria-Genomes/Enterobacter_aerogenes_KCTC_2190_uid68103.fasta 0.0025 400 40 1234273 100 Reads/378_1.fasta Reads/378_2.fasta &> Logs/378 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_phytofirmans_PsJN_uid58729.fasta 0.0025 400 40 1232648 100 Reads/379_1.fasta Reads/379_2.fasta &> Logs/379 &
VirtualNextGenSequencer Bacteria-Genomes/Chitinophaga_pinensis_DSM_2588_uid59113.fasta 0.0025 400 40 1231029 100 Reads/380_1.fasta Reads/380_2.fasta &> Logs/380 &
VirtualNextGenSequencer Bacteria-Genomes/Serratia_AS12_uid67315.fasta 0.0025 400 40 1229417 100 Reads/381_1.fasta Reads/381_2.fasta &> Logs/381 &
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_MIT_9312_uid58357.fasta 0.0025 400 40 1227811 100 Reads/382_1.fasta Reads/382_2.fasta &> Logs/382 &
VirtualNextGenSequencer Bacteria-Genomes/Salinispora_tropica_CNB_440_uid58565.fasta 0.0025 400 40 1226211 100 Reads/383_1.fasta Reads/383_2.fasta &> Logs/383 &

wait
