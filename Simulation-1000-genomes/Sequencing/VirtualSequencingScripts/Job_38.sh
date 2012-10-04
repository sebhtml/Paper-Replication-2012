#!/bin/bash
#$ -N VirtualSequencer-38
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Sideroxydans_lithotrophicus_ES_1_uid46801.fasta 0.0025 400 40 1394289 100 Reads/296_1.fasta Reads/296_2.fasta &> Logs/296 &
VirtualNextGenSequencer Bacteria-Genomes/Psychrobacter_PRwf_1_uid58459.fasta 0.0025 400 40 1391947 100 Reads/297_1.fasta Reads/297_2.fasta &> Logs/297 &
VirtualNextGenSequencer Bacteria-Genomes/Thermus_thermophilus_HB8_uid58223.fasta 0.0025 400 40 1389618 100 Reads/298_1.fasta Reads/298_2.fasta &> Logs/298 &
VirtualNextGenSequencer Bacteria-Genomes/Alicyclobacillus_acidocaldarius_DSM_446_uid59199.fasta 0.0025 400 40 1387300 100 Reads/299_1.fasta Reads/299_2.fasta &> Logs/299 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Blochmannia_vafer_BVAF_uid62083.fasta 0.0025 400 40 1384993 100 Reads/300_1.fasta Reads/300_2.fasta &> Logs/300 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_mallei_NCTC_10229_uid58383.fasta 0.0025 400 40 1382698 100 Reads/301_1.fasta Reads/301_2.fasta &> Logs/301 &
VirtualNextGenSequencer Bacteria-Genomes/Streptomyces_coelicolor_A3_2__uid57801.fasta 0.0025 400 40 1380415 100 Reads/302_1.fasta Reads/302_2.fasta &> Logs/302 &
VirtualNextGenSequencer Bacteria-Genomes/Acetobacter_pasteurianus_IFO_3283_01_uid59279.fasta 0.0025 400 40 1378142 100 Reads/303_1.fasta Reads/303_2.fasta &> Logs/303 &

wait
