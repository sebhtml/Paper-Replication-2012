#!/bin/bash
#$ -N VirtualSequencer-8
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Rhodococcus_opacus_B4_uid13791.fasta 0.0025 400 40 3182684 100 Reads/56_1.fasta Reads/56_2.fasta &> Logs/56 &
VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_somnus_129PT_uid57929.fasta 0.0025 400 40 3155127 100 Reads/57_1.fasta Reads/57_2.fasta &> Logs/57 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Desulforudis_audaxviator_MP104C_uid59067.fasta 0.0025 400 40 3128275 100 Reads/58_1.fasta Reads/58_2.fasta &> Logs/58 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_vulgaris_Hildenborough_uid57645.fasta 0.0025 400 40 3102096 100 Reads/59_1.fasta Reads/59_2.fasta &> Logs/59 &
VirtualNextGenSequencer Bacteria-Genomes/Azotobacter_vinelandii_DJ_uid57597.fasta 0.0025 400 40 3076564 100 Reads/60_1.fasta Reads/60_2.fasta &> Logs/60 &
VirtualNextGenSequencer Bacteria-Genomes/Synechocystis_PCC_6803_uid57659.fasta 0.0025 400 40 3051652 100 Reads/61_1.fasta Reads/61_2.fasta &> Logs/61 &
VirtualNextGenSequencer Bacteria-Genomes/halophilic_archaeon_DL31_uid72619.fasta 0.0025 400 40 3027336 100 Reads/62_1.fasta Reads/62_2.fasta &> Logs/62 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_pallidum_Nichols_uid57585.fasta 0.0025 400 40 3003592 100 Reads/63_1.fasta Reads/63_2.fasta &> Logs/63 &

wait
