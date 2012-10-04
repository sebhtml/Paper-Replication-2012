#!/bin/bash
#$ -N VirtualSequencer-51
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermovibrio_ammonificans_HB_1_uid62095.fasta 0.0025 400 40 1199938 100 Reads/400_1.fasta Reads/400_2.fasta &> Logs/400 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacillus_thermodenitrificans_NG80_2_uid58829.fasta 0.0025 400 40 1198444 100 Reads/401_1.fasta Reads/401_2.fasta &> Logs/401 &
VirtualNextGenSequencer Bacteria-Genomes/Blattabacterium__Mastotermes_darwiniensis__MADAR_uid77127.fasta 0.0025 400 40 1196956 100 Reads/402_1.fasta Reads/402_2.fasta &> Logs/402 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_denitrificans_OS217_uid58263.fasta 0.0025 400 40 1195474 100 Reads/403_1.fasta Reads/403_2.fasta &> Logs/403 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_avium_104_uid57693.fasta 0.0025 400 40 1193997 100 Reads/404_1.fasta Reads/404_2.fasta &> Logs/404 &
VirtualNextGenSequencer Bacteria-Genomes/Brevundimonas_subvibrioides_ATCC_15264_uid42117.fasta 0.0025 400 40 1192526 100 Reads/405_1.fasta Reads/405_2.fasta &> Logs/405 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_salivarius_CCHSS3_uid70481.fasta 0.0025 400 40 1191060 100 Reads/406_1.fasta Reads/406_2.fasta &> Logs/406 &
VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_glutamicum_ATCC_13032_uid61611.fasta 0.0025 400 40 1189600 100 Reads/407_1.fasta Reads/407_2.fasta &> Logs/407 &

wait
