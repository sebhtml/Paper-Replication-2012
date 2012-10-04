#!/bin/bash
#$ -N VirtualSequencer-105
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Aliivibrio_salmonicida_LFI1238_uid59251.fasta 0.0025 400 40 832546 100 Reads/832_1.fasta Reads/832_2.fasta &> Logs/832 &
VirtualNextGenSequencer Bacteria-Genomes/Cyanothece_PCC_7822_uid52547.fasta 0.0025 400 40 832047 100 Reads/833_1.fasta Reads/833_2.fasta &> Logs/833 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_caviae_GPIC_uid57783.fasta 0.0025 400 40 831549 100 Reads/834_1.fasta Reads/834_2.fasta &> Logs/834 &
VirtualNextGenSequencer Bacteria-Genomes/Cellulophaga_lytica_DSM_7489_uid63401.fasta 0.0025 400 40 831051 100 Reads/835_1.fasta Reads/835_2.fasta &> Logs/835 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_suis_KI3806_uid63665.fasta 0.0025 400 40 830555 100 Reads/836_1.fasta Reads/836_2.fasta &> Logs/836 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoproteus_uzoniensis_768_20_uid65089.fasta 0.0025 400 40 830059 100 Reads/837_1.fasta Reads/837_2.fasta &> Logs/837 &
VirtualNextGenSequencer Bacteria-Genomes/Sphaerobacter_thermophilus_DSM_20745_uid41997.fasta 0.0025 400 40 829564 100 Reads/838_1.fasta Reads/838_2.fasta &> Logs/838 &
VirtualNextGenSequencer Bacteria-Genomes/Methylobacterium_extorquens_AM1_uid57605.fasta 0.0025 400 40 829070 100 Reads/839_1.fasta Reads/839_2.fasta &> Logs/839 &

wait
