#!/bin/bash
#$ -N VirtualSequencer-93
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_solanacearum_PSI07_uid50539.fasta 0.0025 400 40 885110 100 Reads/736_1.fasta Reads/736_2.fasta &> Logs/736 &
VirtualNextGenSequencer Bacteria-Genomes/Arcobacter_nitrofigilis_DSM_7299_uid49001.fasta 0.0025 400 40 884510 100 Reads/737_1.fasta Reads/737_2.fasta &> Logs/737 &
VirtualNextGenSequencer Bacteria-Genomes/Caulobacter_crescentus_CB15_uid57891.fasta 0.0025 400 40 883911 100 Reads/738_1.fasta Reads/738_2.fasta &> Logs/738 &
VirtualNextGenSequencer Bacteria-Genomes/Bdellovibrio_bacteriovorus_HD100_uid61595.fasta 0.0025 400 40 883314 100 Reads/739_1.fasta Reads/739_2.fasta &> Logs/739 &
VirtualNextGenSequencer Bacteria-Genomes/Pedobacter_saltans_DSM_12145_uid61349.fasta 0.0025 400 40 882718 100 Reads/740_1.fasta Reads/740_2.fasta &> Logs/740 &
VirtualNextGenSequencer Bacteria-Genomes/Marinomonas_MWYL1_uid58715.fasta 0.0025 400 40 882123 100 Reads/741_1.fasta Reads/741_2.fasta &> Logs/741 &
VirtualNextGenSequencer Bacteria-Genomes/Bradyrhizobium_BTAi1_uid58505.fasta 0.0025 400 40 881529 100 Reads/742_1.fasta Reads/742_2.fasta &> Logs/742 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_ambifaria_MC40_6_uid58701.fasta 0.0025 400 40 880936 100 Reads/743_1.fasta Reads/743_2.fasta &> Logs/743 &

wait
