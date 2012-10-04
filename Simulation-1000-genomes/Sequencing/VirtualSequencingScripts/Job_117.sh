#!/bin/bash
#$ -N VirtualSequencer-117
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Salinispora_arenicola_CNS_205_uid58659.fasta 0.0025 400 40 788357 100 Reads/928_1.fasta Reads/928_2.fasta &> Logs/928 &
VirtualNextGenSequencer Bacteria-Genomes/Dictyoglomus_thermophilum_H_6_12_uid59439.fasta 0.0025 400 40 787933 100 Reads/929_1.fasta Reads/929_2.fasta &> Logs/929 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_splendidus_LGP32_uid59353.fasta 0.0025 400 40 787510 100 Reads/930_1.fasta Reads/930_2.fasta &> Logs/930 &
VirtualNextGenSequencer Bacteria-Genomes/Leptospira_biflexa_serovar_Patoc__Patoc_1__Ames__uid58511.fasta 0.0025 400 40 787087 100 Reads/931_1.fasta Reads/931_2.fasta &> Logs/931 &
VirtualNextGenSequencer Bacteria-Genomes/Cyanothece_PCC_7425_uid59435.fasta 0.0025 400 40 786665 100 Reads/932_1.fasta Reads/932_2.fasta &> Logs/932 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_amylovorus_GRL_1112_uid61179.fasta 0.0025 400 40 786244 100 Reads/933_1.fasta Reads/933_2.fasta &> Logs/933 &
VirtualNextGenSequencer Bacteria-Genomes/Taylorella_equigenitalis_MCE9_uid62103.fasta 0.0025 400 40 785824 100 Reads/934_1.fasta Reads/934_2.fasta &> Logs/934 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_ruminis_ATCC_27782_uid73417.fasta 0.0025 400 40 785404 100 Reads/935_1.fasta Reads/935_2.fasta &> Logs/935 &

wait
