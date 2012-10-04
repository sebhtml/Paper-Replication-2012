#!/bin/bash
#$ -N VirtualSequencer-96
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Sulfolobus_islandicus_M_16_27_uid58851.fasta 0.0025 400 40 871041 100 Reads/760_1.fasta Reads/760_2.fasta &> Logs/760 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_maripaludis_X1_uid70729.fasta 0.0025 400 40 870469 100 Reads/761_1.fasta Reads/761_2.fasta &> Logs/761 &
VirtualNextGenSequencer Bacteria-Genomes/Sorangium_cellulosum__So_ce_56__uid61629.fasta 0.0025 400 40 869899 100 Reads/762_1.fasta Reads/762_2.fasta &> Logs/762 &
VirtualNextGenSequencer Bacteria-Genomes/Zobellia_galactanivorans_uid70621.fasta 0.0025 400 40 869329 100 Reads/763_1.fasta Reads/763_2.fasta &> Logs/763 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_chloromethanicum_CM4_uid58933.fasta 0.0025 400 40 868761 100 Reads/764_1.fasta Reads/764_2.fasta &> Logs/764 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_alaskensis_G20_uid57941.fasta 0.0025 400 40 868193 100 Reads/765_1.fasta Reads/765_2.fasta &> Logs/765 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoproteus_tenax_Kra_1_uid74443.fasta 0.0025 400 40 867627 100 Reads/766_1.fasta Reads/766_2.fasta &> Logs/766 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_subtilis_168_uid57675.fasta 0.0025 400 40 867062 100 Reads/767_1.fasta Reads/767_2.fasta &> Logs/767 &

wait
