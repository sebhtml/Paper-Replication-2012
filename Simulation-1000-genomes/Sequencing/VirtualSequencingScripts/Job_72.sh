#!/bin/bash
#$ -N VirtualSequencer-72
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Caulobacter_segnis_ATCC_21756_uid41709.fasta 0.0025 400 40 1007337 100 Reads/568_1.fasta Reads/568_2.fasta &> Logs/568 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotomaculum_kuznetsovii_DSM_6115_uid67357.fasta 0.0025 400 40 1006453 100 Reads/569_1.fasta Reads/569_2.fasta &> Logs/569 &
VirtualNextGenSequencer Bacteria-Genomes/Fluviicola_taffensis_DSM_16823_uid65271.fasta 0.0025 400 40 1005571 100 Reads/570_1.fasta Reads/570_2.fasta &> Logs/570 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_salivarius_UCC118_uid58233.fasta 0.0025 400 40 1004692 100 Reads/571_1.fasta Reads/571_2.fasta &> Logs/571 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_bellii_OSU_85_389_uid58681.fasta 0.0025 400 40 1003815 100 Reads/572_1.fasta Reads/572_2.fasta &> Logs/572 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_rickettsii__Sheila_Smith__uid58027.fasta 0.0025 400 40 1002940 100 Reads/573_1.fasta Reads/573_2.fasta &> Logs/573 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_CGA009_uid62901.fasta 0.0025 400 40 1002067 100 Reads/574_1.fasta Reads/574_2.fasta &> Logs/574 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfomicrobium_baculatum_DSM_4028_uid59217.fasta 0.0025 400 40 1001197 100 Reads/575_1.fasta Reads/575_2.fasta &> Logs/575 &

wait
