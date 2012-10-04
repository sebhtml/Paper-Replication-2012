#!/bin/bash
#$ -N VirtualSequencer-5
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_gasseri_ATCC_33323_uid57687.fasta 0.0025 400 40 4182866 100 Reads/32_1.fasta Reads/32_2.fasta &> Logs/32 &
VirtualNextGenSequencer Bacteria-Genomes/Eggerthella_lenta_DSM_2243_uid59079.fasta 0.0025 400 40 4120894 100 Reads/33_1.fasta Reads/33_2.fasta &> Logs/33 &
VirtualNextGenSequencer Bacteria-Genomes/Rubrobacter_xylanophilus_DSM_9941_uid58057.fasta 0.0025 400 40 4061597 100 Reads/34_1.fasta Reads/34_2.fasta &> Logs/34 &
VirtualNextGenSequencer Bacteria-Genomes/Nitrosococcus_oceani_ATCC_19707_uid58403.fasta 0.0025 400 40 4004789 100 Reads/35_1.fasta Reads/35_2.fasta &> Logs/35 &
VirtualNextGenSequencer Bacteria-Genomes/Haloterrigena_turkmenica_DSM_5511_uid43501.fasta 0.0025 400 40 3950300 100 Reads/36_1.fasta Reads/36_2.fasta &> Logs/36 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_denticola_ATCC_35405_uid57583.fasta 0.0025 400 40 3897975 100 Reads/37_1.fasta Reads/37_2.fasta &> Logs/37 &
VirtualNextGenSequencer Bacteria-Genomes/Riemerella_anatipestifer_DSM_15868_uid60727.fasta 0.0025 400 40 3847677 100 Reads/38_1.fasta Reads/38_2.fasta &> Logs/38 &
VirtualNextGenSequencer Bacteria-Genomes/Cellvibrio_japonicus_Ueda107_uid59139.fasta 0.0025 400 40 3799276 100 Reads/39_1.fasta Reads/39_2.fasta &> Logs/39 &

wait
