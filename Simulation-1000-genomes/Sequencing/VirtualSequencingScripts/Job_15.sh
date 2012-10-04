#!/bin/bash
#$ -N VirtualSequencer-15
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Listeria_monocytogenes_HCC23_uid59203.fasta 0.0025 400 40 2260433 100 Reads/112_1.fasta Reads/112_2.fasta &> Logs/112 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cellulosilyticus_DSM_2522_uid43329.fasta 0.0025 400 40 2250497 100 Reads/113_1.fasta Reads/113_2.fasta &> Logs/113 &
VirtualNextGenSequencer Bacteria-Genomes/Hyperthermus_butylicus_DSM_5456_uid57755.fasta 0.0025 400 40 2240691 100 Reads/114_1.fasta Reads/114_2.fasta &> Logs/114 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_enterocolitica_palearctica_105_5R_r__uid63663.fasta 0.0025 400 40 2231012 100 Reads/115_1.fasta Reads/115_2.fasta &> Logs/115 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcoides_burtonii_DSM_6242_uid58023.fasta 0.0025 400 40 2221457 100 Reads/116_1.fasta Reads/116_2.fasta &> Logs/116 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodospirillum_centenum_SW_uid58805.fasta 0.0025 400 40 2212024 100 Reads/117_1.fasta Reads/117_2.fasta &> Logs/117 &
VirtualNextGenSequencer Bacteria-Genomes/Leptospira_borgpetersenii_serovar_Hardjo_bovis_L550_uid58507.fasta 0.0025 400 40 2202710 100 Reads/118_1.fasta Reads/118_2.fasta &> Logs/118 &
VirtualNextGenSequencer Bacteria-Genomes/Cronobacter_turicensis_z3032_uid40821.fasta 0.0025 400 40 2193513 100 Reads/119_1.fasta Reads/119_2.fasta &> Logs/119 &

wait
