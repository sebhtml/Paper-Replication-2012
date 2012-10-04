#!/bin/bash
#$ -N VirtualSequencer-18
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pasteurianus_ATCC_43144_uid68019.fasta 0.0025 400 40 2052913 100 Reads/136_1.fasta Reads/136_2.fasta &> Logs/136 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacillus_Y412MC61_uid41171.fasta 0.0025 400 40 2045462 100 Reads/137_1.fasta Reads/137_2.fasta &> Logs/137 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_cholerae_O1_2010EL_1786_uid78933.fasta 0.0025 400 40 2038091 100 Reads/138_1.fasta Reads/138_2.fasta &> Logs/138 &
VirtualNextGenSequencer Bacteria-Genomes/Erwinia_amylovora_ATCC_49946_uid46943.fasta 0.0025 400 40 2030799 100 Reads/139_1.fasta Reads/139_2.fasta &> Logs/139 &
VirtualNextGenSequencer Bacteria-Genomes/Tropheryma_whipplei_TW08_27_uid57961.fasta 0.0025 400 40 2023584 100 Reads/140_1.fasta Reads/140_2.fasta &> Logs/140 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_felis_URRWXCal2_uid58331.fasta 0.0025 400 40 2016447 100 Reads/141_1.fasta Reads/141_2.fasta &> Logs/141 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_carnosus_TM300_uid59401.fasta 0.0025 400 40 2009384 100 Reads/142_1.fasta Reads/142_2.fasta &> Logs/142 &
VirtualNextGenSequencer Bacteria-Genomes/Ehrlichia_ruminantium_Welgevonden_uid58013.fasta 0.0025 400 40 2002394 100 Reads/143_1.fasta Reads/143_2.fasta &> Logs/143 &

wait
