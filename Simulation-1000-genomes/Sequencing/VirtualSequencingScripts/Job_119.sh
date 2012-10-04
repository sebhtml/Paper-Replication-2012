#!/bin/bash
#$ -N VirtualSequencer-119
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermosipho_africanus_TCF52B_uid59095.fasta 0.0025 400 40 781655 100 Reads/944_1.fasta Reads/944_2.fasta &> Logs/944 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfurispirillum_indicum_S5_uid45897.fasta 0.0025 400 40 781242 100 Reads/945_1.fasta Reads/945_2.fasta &> Logs/945 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_suis_Illinois_uid61897.fasta 0.0025 400 40 780829 100 Reads/946_1.fasta Reads/946_2.fasta &> Logs/946 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_Nepal516_uid58609.fasta 0.0025 400 40 780417 100 Reads/947_1.fasta Reads/947_2.fasta &> Logs/947 &
VirtualNextGenSequencer Bacteria-Genomes/Cellulomonas_fimi_ATCC_484_uid66779.fasta 0.0025 400 40 780006 100 Reads/948_1.fasta Reads/948_2.fasta &> Logs/948 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_oryzae_KACC10331_uid58155.fasta 0.0025 400 40 779595 100 Reads/949_1.fasta Reads/949_2.fasta &> Logs/949 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_cholerae_O395_uid58425.fasta 0.0025 400 40 779185 100 Reads/950_1.fasta Reads/950_2.fasta &> Logs/950 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_africae_ESF_5_uid58799.fasta 0.0025 400 40 778776 100 Reads/951_1.fasta Reads/951_2.fasta &> Logs/951 &

wait
