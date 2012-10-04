#!/bin/bash
#$ -N VirtualSequencer-77
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Denitrovibrio_acetiphilus_DSM_12809_uid46657.fasta 0.0025 400 40 973693 100 Reads/608_1.fasta Reads/608_2.fasta &> Logs/608 &
VirtualNextGenSequencer Bacteria-Genomes/Leptospira_interrogans_serovar_Lai_56601_uid57881.fasta 0.0025 400 40 972895 100 Reads/609_1.fasta Reads/609_2.fasta &> Logs/609 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfobacillus_acidophilus_TPY_uid68841.fasta 0.0025 400 40 972099 100 Reads/610_1.fasta Reads/610_2.fasta &> Logs/610 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_gladioli_BSR3_uid66301.fasta 0.0025 400 40 971304 100 Reads/611_1.fasta Reads/611_2.fasta &> Logs/611 &
VirtualNextGenSequencer Bacteria-Genomes/Oligotropha_carboxidovorans_OM5_uid59155.fasta 0.0025 400 40 970511 100 Reads/612_1.fasta Reads/612_2.fasta &> Logs/612 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_suis_ATCC_23445_uid59015.fasta 0.0025 400 40 969721 100 Reads/613_1.fasta Reads/613_2.fasta &> Logs/613 &
VirtualNextGenSequencer Bacteria-Genomes/Thermococcus_onnurineus_NA1_uid59043.fasta 0.0025 400 40 968932 100 Reads/614_1.fasta Reads/614_2.fasta &> Logs/614 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_cholerae_MJ_1236_uid59387.fasta 0.0025 400 40 968145 100 Reads/615_1.fasta Reads/615_2.fasta &> Logs/615 &

wait
