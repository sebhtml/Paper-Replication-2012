#!/bin/bash
#$ -N VirtualSequencer-100
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Ochrobactrum_anthropi_ATCC_49188_uid58921.fasta 0.0025 400 40 853285 100 Reads/792_1.fasta Reads/792_2.fasta &> Logs/792 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodomicrobium_vannielii_ATCC_17100_uid43247.fasta 0.0025 400 40 852748 100 Reads/793_1.fasta Reads/793_2.fasta &> Logs/793 &
VirtualNextGenSequencer Bacteria-Genomes/Cenarchaeum_symbiosum_A_uid61411.fasta 0.0025 400 40 852211 100 Reads/794_1.fasta Reads/794_2.fasta &> Logs/794 &
VirtualNextGenSequencer Bacteria-Genomes/Halomonas_elongata_DSM_2581_uid52781.fasta 0.0025 400 40 851676 100 Reads/795_1.fasta Reads/795_2.fasta &> Logs/795 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_pseudomallei_K96243_uid57733.fasta 0.0025 400 40 851141 100 Reads/796_1.fasta Reads/796_2.fasta &> Logs/796 &
VirtualNextGenSequencer Bacteria-Genomes/Bartonella_tribocorum_CIP_105476_uid59129.fasta 0.0025 400 40 850608 100 Reads/797_1.fasta Reads/797_2.fasta &> Logs/797 &
VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_parasuis_SH0165_uid59273.fasta 0.0025 400 40 850076 100 Reads/798_1.fasta Reads/798_2.fasta &> Logs/798 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_akari_Hartford_uid58161.fasta 0.0025 400 40 849544 100 Reads/799_1.fasta Reads/799_2.fasta &> Logs/799 &

wait
