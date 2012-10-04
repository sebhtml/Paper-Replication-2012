#!/bin/bash
#$ -N VirtualSequencer-78
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pantoea_vagans_C9_1_uid49871.fasta 0.0025 400 40 967360 100 Reads/616_1.fasta Reads/616_2.fasta &> Logs/616 &
VirtualNextGenSequencer Bacteria-Genomes/Methanotorris_igneus_Kol_5_uid67321.fasta 0.0025 400 40 966577 100 Reads/617_1.fasta Reads/617_2.fasta &> Logs/617 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_CO92_uid57621.fasta 0.0025 400 40 965796 100 Reads/618_1.fasta Reads/618_2.fasta &> Logs/618 &
VirtualNextGenSequencer Bacteria-Genomes/Anaeromyxobacter_dehalogenans_2CP_C_uid58135.fasta 0.0025 400 40 965017 100 Reads/619_1.fasta Reads/619_2.fasta &> Logs/619 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_mallei_NCTC_10247_uid58385.fasta 0.0025 400 40 964240 100 Reads/620_1.fasta Reads/620_2.fasta &> Logs/620 &
VirtualNextGenSequencer Bacteria-Genomes/Enterococcus_faecalis_V583_uid57669.fasta 0.0025 400 40 963464 100 Reads/621_1.fasta Reads/621_2.fasta &> Logs/621 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_campestris_ATCC_33913_uid57887.fasta 0.0025 400 40 962691 100 Reads/622_1.fasta Reads/622_2.fasta &> Logs/622 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_mendocina_ymp_uid58723.fasta 0.0025 400 40 961919 100 Reads/623_1.fasta Reads/623_2.fasta &> Logs/623 &

wait
