#!/bin/bash
#$ -N VirtualSequencer-89
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_johnsonii_FI9785_uid41735.fasta 0.0025 400 40 904974 100 Reads/704_1.fasta Reads/704_2.fasta &> Logs/704 &
VirtualNextGenSequencer Bacteria-Genomes/Campylobacter_hominis_ATCC_BAA_381_uid58981.fasta 0.0025 400 40 904333 100 Reads/705_1.fasta Reads/705_2.fasta &> Logs/705 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_APEC_O1_uid58623.fasta 0.0025 400 40 903694 100 Reads/706_1.fasta Reads/706_2.fasta &> Logs/706 &
VirtualNextGenSequencer Bacteria-Genomes/Phenylobacterium_zucineum_HLK1_uid58959.fasta 0.0025 400 40 903055 100 Reads/707_1.fasta Reads/707_2.fasta &> Logs/707 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_animalis_lactis_Bl_04_uid59359.fasta 0.0025 400 40 902418 100 Reads/708_1.fasta Reads/708_2.fasta &> Logs/708 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_pneumoniae_M129_uid57709.fasta 0.0025 400 40 901782 100 Reads/709_1.fasta Reads/709_2.fasta &> Logs/709 &
VirtualNextGenSequencer Bacteria-Genomes/Francisella_philomiragia_ATCC_25017_uid59105.fasta 0.0025 400 40 901148 100 Reads/710_1.fasta Reads/710_2.fasta &> Logs/710 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_baltica_OS185_uid58743.fasta 0.0025 400 40 900515 100 Reads/711_1.fasta Reads/711_2.fasta &> Logs/711 &

wait
