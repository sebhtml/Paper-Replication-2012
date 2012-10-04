#!/bin/bash
#$ -N VirtualSequencer-85
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Leuconostoc_kimchii_IMSNU_11154_uid48589.fasta 0.0025 400 40 926240 100 Reads/672_1.fasta Reads/672_2.fasta &> Logs/672 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_G9842_uid58759.fasta 0.0025 400 40 925552 100 Reads/673_1.fasta Reads/673_2.fasta &> Logs/673 &
VirtualNextGenSequencer Bacteria-Genomes/Roseiflexus_castenholzii_DSM_13941_uid58287.fasta 0.0025 400 40 924866 100 Reads/674_1.fasta Reads/674_2.fasta &> Logs/674 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfurococcus_mucosus_DSM_2162_uid62227.fasta 0.0025 400 40 924182 100 Reads/675_1.fasta Reads/675_2.fasta &> Logs/675 &
VirtualNextGenSequencer Bacteria-Genomes/Brucella_suis_1330_uid57927.fasta 0.0025 400 40 923499 100 Reads/676_1.fasta Reads/676_2.fasta &> Logs/676 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_syringae_B728a_uid57931.fasta 0.0025 400 40 922818 100 Reads/677_1.fasta Reads/677_2.fasta &> Logs/677 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_cellulovorans_743B_uid51503.fasta 0.0025 400 40 922138 100 Reads/678_1.fasta Reads/678_2.fasta &> Logs/678 &
VirtualNextGenSequencer Bacteria-Genomes/Methanosphaera_stadtmanae_DSM_3091_uid58407.fasta 0.0025 400 40 921460 100 Reads/679_1.fasta Reads/679_2.fasta &> Logs/679 &

wait
