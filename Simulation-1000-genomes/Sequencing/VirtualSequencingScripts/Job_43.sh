#!/bin/bash
#$ -N VirtualSequencer-43
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Rhodococcus_jostii_RHA1_uid58325.fasta 0.0025 400 40 1308929 100 Reads/336_1.fasta Reads/336_2.fasta &> Logs/336 &
VirtualNextGenSequencer Bacteria-Genomes/Pelobacter_propionicus_DSM_2379_uid58255.fasta 0.0025 400 40 1306991 100 Reads/337_1.fasta Reads/337_2.fasta &> Logs/337 &
VirtualNextGenSequencer Bacteria-Genomes/Kytococcus_sedentarius_DSM_20547_uid59071.fasta 0.0025 400 40 1305062 100 Reads/338_1.fasta Reads/338_2.fasta &> Logs/338 &
VirtualNextGenSequencer Bacteria-Genomes/Flexistipes_sinusarabici_DSM_4947_uid68147.fasta 0.0025 400 40 1303141 100 Reads/339_1.fasta Reads/339_2.fasta &> Logs/339 &
VirtualNextGenSequencer Bacteria-Genomes/Wigglesworthia_glossinidia_endosymbiont_of_Glossina_brevipalpis_uid57853.fasta 0.0025 400 40 1301229 100 Reads/340_1.fasta Reads/340_2.fasta &> Logs/340 &
VirtualNextGenSequencer Bacteria-Genomes/Oligotropha_carboxidovorans_OM5_uid72795.fasta 0.0025 400 40 1299325 100 Reads/341_1.fasta Reads/341_2.fasta &> Logs/341 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_B8_uid49873.fasta 0.0025 400 40 1297430 100 Reads/342_1.fasta Reads/342_2.fasta &> Logs/342 &
VirtualNextGenSequencer Bacteria-Genomes/cyanobacterium_UCYN_A_uid43697.fasta 0.0025 400 40 1295543 100 Reads/343_1.fasta Reads/343_2.fasta &> Logs/343 &

wait
