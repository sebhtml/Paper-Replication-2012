#!/bin/bash
#$ -N VirtualSequencer-21
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Herminiimonas_arsenicoxydans_uid58291.fasta 0.0025 400 40 1893730 100 Reads/160_1.fasta Reads/160_2.fasta &> Logs/160 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_wiegelii_Rt8_B1_uid52581.fasta 0.0025 400 40 1887876 100 Reads/161_1.fasta Reads/161_2.fasta &> Logs/161 &
VirtualNextGenSequencer Bacteria-Genomes/Methanocaldococcus_FS406_22_uid42499.fasta 0.0025 400 40 1882076 100 Reads/162_1.fasta Reads/162_2.fasta &> Logs/162 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Sulcia_muelleri_CARI_uid52535.fasta 0.0025 400 40 1876329 100 Reads/163_1.fasta Reads/163_2.fasta &> Logs/163 &
VirtualNextGenSequencer Bacteria-Genomes/Pyrococcus_horikoshii_OT3_uid57753.fasta 0.0025 400 40 1870634 100 Reads/164_1.fasta Reads/164_2.fasta &> Logs/164 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacillus_C56_T3_uid49467.fasta 0.0025 400 40 1864991 100 Reads/165_1.fasta Reads/165_2.fasta &> Logs/165 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_MGAS2096_uid58573.fasta 0.0025 400 40 1859399 100 Reads/166_1.fasta Reads/166_2.fasta &> Logs/166 &
VirtualNextGenSequencer Bacteria-Genomes/Ralstonia_solanacearum_CFBP2957_uid50545.fasta 0.0025 400 40 1853857 100 Reads/167_1.fasta Reads/167_2.fasta &> Logs/167 &

wait
