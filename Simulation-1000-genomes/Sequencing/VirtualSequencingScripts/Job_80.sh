#!/bin/bash
#$ -N VirtualSequencer-80
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Aeromonas_veronii_B565_uid66323.fasta 0.0025 400 40 955056 100 Reads/632_1.fasta Reads/632_2.fasta &> Logs/632 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_difficile_R20291_uid40921.fasta 0.0025 400 40 954303 100 Reads/633_1.fasta Reads/633_2.fasta &> Logs/633 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Azobacteroides_pseudotrichonymphae_genomovar__CFP2_uid59163.fasta 0.0025 400 40 953551 100 Reads/634_1.fasta Reads/634_2.fasta &> Logs/634 &
VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_solanacearum_GMI1000_uid57593.fasta 0.0025 400 40 952801 100 Reads/635_1.fasta Reads/635_2.fasta &> Logs/635 &
VirtualNextGenSequencer Bacteria-Genomes/Nitratiruptor_SB155_2_uid58861.fasta 0.0025 400 40 952053 100 Reads/636_1.fasta Reads/636_2.fasta &> Logs/636 &
VirtualNextGenSequencer Bacteria-Genomes/Exiguobacterium_sibiricum_255_15_uid58053.fasta 0.0025 400 40 951307 100 Reads/637_1.fasta Reads/637_2.fasta &> Logs/637 &
VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola__Cinara_tujafilina__uid68101.fasta 0.0025 400 40 950562 100 Reads/638_1.fasta Reads/638_2.fasta &> Logs/638 &
VirtualNextGenSequencer Bacteria-Genomes/Thermus_scotoductus_SA_01_uid62273.fasta 0.0025 400 40 949819 100 Reads/639_1.fasta Reads/639_2.fasta &> Logs/639 &

wait
