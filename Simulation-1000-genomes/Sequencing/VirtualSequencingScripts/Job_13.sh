#!/bin/bash
#$ -N VirtualSequencer-13
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_RQ2_uid58935.fasta 0.0025 400 40 2439748 100 Reads/96_1.fasta Reads/96_2.fasta &> Logs/96 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoproteus_neutrophilus_V24Sta_uid58421.fasta 0.0025 400 40 2427269 100 Reads/97_1.fasta Reads/97_2.fasta &> Logs/97 &
VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_somnus_2336_uid57979.fasta 0.0025 400 40 2414979 100 Reads/98_1.fasta Reads/98_2.fasta &> Logs/98 &
VirtualNextGenSequencer Bacteria-Genomes/Herbaspirillum_seropedicae_SmR1_uid50427.fasta 0.0025 400 40 2402873 100 Reads/99_1.fasta Reads/99_2.fasta &> Logs/99 &
VirtualNextGenSequencer Bacteria-Genomes/Thermodesulfatator_indicus_DSM_15286_uid68285.fasta 0.0025 400 40 2390948 100 Reads/100_1.fasta Reads/100_2.fasta &> Logs/100 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_K_12_substr__MG1655_uid57779.fasta 0.0025 400 40 2379199 100 Reads/101_1.fasta Reads/101_2.fasta &> Logs/101 &
VirtualNextGenSequencer Bacteria-Genomes/Nocardiopsis_dassonvillei_DSM_43111_uid49483.fasta 0.0025 400 40 2367622 100 Reads/102_1.fasta Reads/102_2.fasta &> Logs/102 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_muridarum_Nigg_uid57785.fasta 0.0025 400 40 2356211 100 Reads/103_1.fasta Reads/103_2.fasta &> Logs/103 &

wait
