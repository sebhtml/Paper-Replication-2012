#!/bin/bash
#$ -N VirtualSequencer-109
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Chlamydophila_pecorum_E58_uid66295.fasta 0.0025 400 40 817001 100 Reads/864_1.fasta Reads/864_2.fasta &> Logs/864 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_tuberculosis_H37Rv_uid57777.fasta 0.0025 400 40 816530 100 Reads/865_1.fasta Reads/865_2.fasta &> Logs/865 &
VirtualNextGenSequencer Bacteria-Genomes/Proteus_mirabilis_HI4320_uid61599.fasta 0.0025 400 40 816059 100 Reads/866_1.fasta Reads/866_2.fasta &> Logs/866 &
VirtualNextGenSequencer Bacteria-Genomes/Cupriavidus_metallidurans_CH34_uid57815.fasta 0.0025 400 40 815588 100 Reads/867_1.fasta Reads/867_2.fasta &> Logs/867 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_B1_Okra_uid59147.fasta 0.0025 400 40 815119 100 Reads/868_1.fasta Reads/868_2.fasta &> Logs/868 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_bovis_Hubei_1_uid68691.fasta 0.0025 400 40 814650 100 Reads/869_1.fasta Reads/869_2.fasta &> Logs/869 &
VirtualNextGenSequencer Bacteria-Genomes/Enterobacter_cloacae_SCF1_uid59969.fasta 0.0025 400 40 814183 100 Reads/870_1.fasta Reads/870_2.fasta &> Logs/870 &
VirtualNextGenSequencer Bacteria-Genomes/Wolbachia_wRi_uid59371.fasta 0.0025 400 40 813716 100 Reads/871_1.fasta Reads/871_2.fasta &> Logs/871 &

wait
