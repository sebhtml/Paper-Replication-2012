#!/bin/bash
#$ -N VirtualSequencer-111
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_saprophyticus_ATCC_15305_uid58411.fasta 0.0025 400 40 809549 100 Reads/880_1.fasta Reads/880_2.fasta &> Logs/880 &
VirtualNextGenSequencer Bacteria-Genomes/Thermococcus_sibiricus_MM_739_uid59399.fasta 0.0025 400 40 809090 100 Reads/881_1.fasta Reads/881_2.fasta &> Logs/881 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_MGAS9429_uid58569.fasta 0.0025 400 40 808631 100 Reads/882_1.fasta Reads/882_2.fasta &> Logs/882 &
VirtualNextGenSequencer Bacteria-Genomes/Planctomyces_limnophilus_DSM_3776_uid48643.fasta 0.0025 400 40 808174 100 Reads/883_1.fasta Reads/883_2.fasta &> Logs/883 &
VirtualNextGenSequencer Bacteria-Genomes/Cyclobacterium_marinum_DSM_745_uid71485.fasta 0.0025 400 40 807717 100 Reads/884_1.fasta Reads/884_2.fasta &> Logs/884 &
VirtualNextGenSequencer Bacteria-Genomes/Methanobacterium_AL_21_uid63623.fasta 0.0025 400 40 807261 100 Reads/885_1.fasta Reads/885_2.fasta &> Logs/885 &
VirtualNextGenSequencer Bacteria-Genomes/Odoribacter_splanchnicus_DSM_20712_uid63397.fasta 0.0025 400 40 806806 100 Reads/886_1.fasta Reads/886_2.fasta &> Logs/886 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_voltae_A3_uid49529.fasta 0.0025 400 40 806352 100 Reads/887_1.fasta Reads/887_2.fasta &> Logs/887 &

wait
