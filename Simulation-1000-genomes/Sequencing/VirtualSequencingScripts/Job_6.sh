#!/bin/bash
#$ -N VirtualSequencer-6
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola_Bp__Baizongia_pistaciae__uid57827.fasta 0.0025 400 40 3752658 100 Reads/40_1.fasta Reads/40_2.fasta &> Logs/40 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_bemidjiensis_Bem_uid58749.fasta 0.0025 400 40 3707714 100 Reads/41_1.fasta Reads/41_2.fasta &> Logs/41 &
VirtualNextGenSequencer Bacteria-Genomes/Halorubrum_lacusprofundi_ATCC_49239_uid58807.fasta 0.0025 400 40 3664348 100 Reads/42_1.fasta Reads/42_2.fasta &> Logs/42 &
VirtualNextGenSequencer Bacteria-Genomes/Listeria_monocytogenes_serotype_4b_F2365_uid57689.fasta 0.0025 400 40 3622468 100 Reads/43_1.fasta Reads/43_2.fasta &> Logs/43 &
VirtualNextGenSequencer Bacteria-Genomes/Methanocaldococcus_vulcanius_M7_uid41131.fasta 0.0025 400 40 3581992 100 Reads/44_1.fasta Reads/44_2.fasta &> Logs/44 &
VirtualNextGenSequencer Bacteria-Genomes/Amycolatopsis_mediterranei_U32_uid50565.fasta 0.0025 400 40 3542844 100 Reads/45_1.fasta Reads/45_2.fasta &> Logs/45 &
VirtualNextGenSequencer Bacteria-Genomes/Methanosarcina_barkeri_Fusaro_uid57715.fasta 0.0025 400 40 3504951 100 Reads/46_1.fasta Reads/46_2.fasta &> Logs/46 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_concisus_13826_uid58667.fasta 0.0025 400 40 3468249 100 Reads/47_1.fasta Reads/47_2.fasta &> Logs/47 &

wait
