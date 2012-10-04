#!/bin/bash
#$ -N VirtualSequencer-60
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_MGAS315_uid57911.fasta 0.0025 400 40 1104842 100 Reads/472_1.fasta Reads/472_2.fasta &> Logs/472 &
VirtualNextGenSequencer Bacteria-Genomes/Erysipelothrix_rhusiopathiae_Fujisawa_uid68021.fasta 0.0025 400 40 1103676 100 Reads/473_1.fasta Reads/473_2.fasta &> Logs/473 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_bovis_AF2122_97_uid57695.fasta 0.0025 400 40 1102514 100 Reads/474_1.fasta Reads/474_2.fasta &> Logs/474 &
VirtualNextGenSequencer Bacteria-Genomes/Aster_yellows_witches_broom_phytoplasma_AYWB_uid58297.fasta 0.0025 400 40 1101355 100 Reads/475_1.fasta Reads/475_2.fasta &> Logs/475 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_pulmonis_UAB_CTIP_uid61569.fasta 0.0025 400 40 1100200 100 Reads/476_1.fasta Reads/476_2.fasta &> Logs/476 &
VirtualNextGenSequencer Bacteria-Genomes/Roseiflexus_RS_1_uid58523.fasta 0.0025 400 40 1099049 100 Reads/477_1.fasta Reads/477_2.fasta &> Logs/477 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_dysgalactiae_equisimilis_GGS_124_uid59103.fasta 0.0025 400 40 1097901 100 Reads/478_1.fasta Reads/478_2.fasta &> Logs/478 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_casei_ATCC_334_uid57985.fasta 0.0025 400 40 1096757 100 Reads/479_1.fasta Reads/479_2.fasta &> Logs/479 &

wait
