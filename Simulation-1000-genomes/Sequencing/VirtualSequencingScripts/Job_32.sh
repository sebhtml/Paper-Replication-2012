#!/bin/bash
#$ -N VirtualSequencer-32
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Shewanella_violacea_DSS12_uid47085.fasta 0.0025 400 40 1522759 100 Reads/248_1.fasta Reads/248_2.fasta &> Logs/248 &
VirtualNextGenSequencer Bacteria-Genomes/Thermococcus_barophilus_MP_uid54733.fasta 0.0025 400 40 1519711 100 Reads/249_1.fasta Reads/249_2.fasta &> Logs/249 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Pelagibacter_IMCC9063_uid66305.fasta 0.0025 400 40 1516680 100 Reads/250_1.fasta Reads/250_2.fasta &> Logs/250 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfotomaculum_ruminis_DSM_2154_uid67507.fasta 0.0025 400 40 1513668 100 Reads/251_1.fasta Reads/251_2.fasta &> Logs/251 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_recurrentis_A1_uid58793.fasta 0.0025 400 40 1510674 100 Reads/252_1.fasta Reads/252_2.fasta &> Logs/252 &
VirtualNextGenSequencer Bacteria-Genomes/Bartonella_quintana_Toulouse_uid57635.fasta 0.0025 400 40 1507697 100 Reads/253_1.fasta Reads/253_2.fasta &> Logs/253 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_gordonii_Challis_substr__CH1_uid57667.fasta 0.0025 400 40 1504738 100 Reads/254_1.fasta Reads/254_2.fasta &> Logs/254 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodococcus_equi_103S_uid60171.fasta 0.0025 400 40 1501796 100 Reads/255_1.fasta Reads/255_2.fasta &> Logs/255 &

wait
