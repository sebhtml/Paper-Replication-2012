#!/bin/bash
#$ -N VirtualSequencer-70
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Prevotella_denticola_F0289_uid65091.fasta 0.0025 400 40 1021806 100 Reads/552_1.fasta Reads/552_2.fasta &> Logs/552 &
VirtualNextGenSequencer Bacteria-Genomes/Hahella_chejuensis_KCTC_2396_uid58483.fasta 0.0025 400 40 1020883 100 Reads/553_1.fasta Reads/553_2.fasta &> Logs/553 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Ruthia_magnifica_Cm__Calyptogena_magnifica__uid58645.fasta 0.0025 400 40 1019963 100 Reads/554_1.fasta Reads/554_2.fasta &> Logs/554 &
VirtualNextGenSequencer Bacteria-Genomes/Muricauda_ruestringensis_DSM_13258_uid72479.fasta 0.0025 400 40 1019045 100 Reads/555_1.fasta Reads/555_2.fasta &> Logs/555 &
VirtualNextGenSequencer Bacteria-Genomes/Hirschia_baltica_ATCC_49814_uid59365.fasta 0.0025 400 40 1018130 100 Reads/556_1.fasta Reads/556_2.fasta &> Logs/556 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_Q1_uid58529.fasta 0.0025 400 40 1017217 100 Reads/557_1.fasta Reads/557_2.fasta &> Logs/557 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_NCTC_8325_uid57795.fasta 0.0025 400 40 1016307 100 Reads/558_1.fasta Reads/558_2.fasta &> Logs/558 &
VirtualNextGenSequencer Bacteria-Genomes/Symbiobacterium_thermophilum_IAM_14863_uid58165.fasta 0.0025 400 40 1015399 100 Reads/559_1.fasta Reads/559_2.fasta &> Logs/559 &

wait
