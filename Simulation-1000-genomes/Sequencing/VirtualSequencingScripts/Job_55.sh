#!/bin/bash
#$ -N VirtualSequencer-55
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O157_H7_Sakai_uid57781.fasta 0.0025 400 40 1154747 100 Reads/432_1.fasta Reads/432_2.fasta &> Logs/432 &
VirtualNextGenSequencer Bacteria-Genomes/Thermobaculum_terrenum_ATCC_BAA_798_uid42011.fasta 0.0025 400 40 1153416 100 Reads/433_1.fasta Reads/433_2.fasta &> Logs/433 &
VirtualNextGenSequencer Bacteria-Genomes/Frankia_CcI3_uid58397.fasta 0.0025 400 40 1152090 100 Reads/434_1.fasta Reads/434_2.fasta &> Logs/434 &
VirtualNextGenSequencer Bacteria-Genomes/Methanosaeta_thermophila_PT_uid58469.fasta 0.0025 400 40 1150768 100 Reads/435_1.fasta Reads/435_2.fasta &> Logs/435 &
VirtualNextGenSequencer Bacteria-Genomes/Parvibaculum_lavamentivorans_DS_1_uid58739.fasta 0.0025 400 40 1149450 100 Reads/436_1.fasta Reads/436_2.fasta &> Logs/436 &
VirtualNextGenSequencer Bacteria-Genomes/Methanobacterium_SWAN_1_uid67359.fasta 0.0025 400 40 1148137 100 Reads/437_1.fasta Reads/437_2.fasta &> Logs/437 &
VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola_5A__Acyrthosiphon_pisum__uid59285.fasta 0.0025 400 40 1146829 100 Reads/438_1.fasta Reads/438_2.fasta &> Logs/438 &
VirtualNextGenSequencer Bacteria-Genomes/Caldicellulosiruptor_owensensis_OL_uid60165.fasta 0.0025 400 40 1145525 100 Reads/439_1.fasta Reads/439_2.fasta &> Logs/439 &

wait
