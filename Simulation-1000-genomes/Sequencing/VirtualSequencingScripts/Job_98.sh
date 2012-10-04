#!/bin/bash
#$ -N VirtualSequencer-98
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Bacillus_thuringiensis_BMB171_uid49135.fasta 0.0025 400 40 862026 100 Reads/776_1.fasta Reads/776_2.fasta &> Logs/776 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_CCGE1002_uid42523.fasta 0.0025 400 40 861472 100 Reads/777_1.fasta Reads/777_2.fasta &> Logs/777 &
VirtualNextGenSequencer Bacteria-Genomes/Ruegeria_pomeroyi_DSS_3_uid57863.fasta 0.0025 400 40 860919 100 Reads/778_1.fasta Reads/778_2.fasta &> Logs/778 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrobaculum_aerophilum_IM2_uid57727.fasta 0.0025 400 40 860367 100 Reads/779_1.fasta Reads/779_2.fasta &> Logs/779 &
VirtualNextGenSequencer Bacteria-Genomes/Asticcacaulis_excentricus_CB_48_uid55641.fasta 0.0025 400 40 859816 100 Reads/780_1.fasta Reads/780_2.fasta &> Logs/780 &
VirtualNextGenSequencer Bacteria-Genomes/Neisseria_meningitidis_alpha14_uid61649.fasta 0.0025 400 40 859266 100 Reads/781_1.fasta Reads/781_2.fasta &> Logs/781 &
VirtualNextGenSequencer Bacteria-Genomes/Thermofilum_pendens_Hrk_5_uid58563.fasta 0.0025 400 40 858717 100 Reads/782_1.fasta Reads/782_2.fasta &> Logs/782 &
VirtualNextGenSequencer Bacteria-Genomes/Jannaschia_CCS1_uid58147.fasta 0.0025 400 40 858169 100 Reads/783_1.fasta Reads/783_2.fasta &> Logs/783 &

wait
