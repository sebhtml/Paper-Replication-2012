#!/bin/bash
#$ -N VirtualSequencer-107
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_salexigens_DSM_2638_uid59223.fasta 0.0025 400 40 824664 100 Reads/848_1.fasta Reads/848_2.fasta &> Logs/848 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_primitia_ZAS_2_uid67367.fasta 0.0025 400 40 824179 100 Reads/849_1.fasta Reads/849_2.fasta &> Logs/849 &
VirtualNextGenSequencer Bacteria-Genomes/Bacteroides_fragilis_NCTC_9343_uid57639.fasta 0.0025 400 40 823694 100 Reads/850_1.fasta Reads/850_2.fasta &> Logs/850 &
VirtualNextGenSequencer Bacteria-Genomes/Deinococcus_deserti_VCD115_uid58615.fasta 0.0025 400 40 823211 100 Reads/851_1.fasta Reads/851_2.fasta &> Logs/851 &
VirtualNextGenSequencer Bacteria-Genomes/Aggregatibacter_aphrophilus_NJ8700_uid59407.fasta 0.0025 400 40 822728 100 Reads/852_1.fasta Reads/852_2.fasta &> Logs/852 &
VirtualNextGenSequencer Bacteria-Genomes/Colwellia_psychrerythraea_34H_uid57855.fasta 0.0025 400 40 822246 100 Reads/853_1.fasta Reads/853_2.fasta &> Logs/853 &
VirtualNextGenSequencer Bacteria-Genomes/Thioalkalivibrio_sulfidophilus_HL_EbGr7_uid59179.fasta 0.0025 400 40 821765 100 Reads/854_1.fasta Reads/854_2.fasta &> Logs/854 &
VirtualNextGenSequencer Bacteria-Genomes/Acidothermus_cellulolyticus_11B_uid58501.fasta 0.0025 400 40 821285 100 Reads/855_1.fasta Reads/855_2.fasta &> Logs/855 &

wait
