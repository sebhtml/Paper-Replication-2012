#!/bin/bash
#$ -N VirtualSequencer-45
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_petrophila_RKU_1_uid58655.fasta 0.0025 400 40 1278920 100 Reads/352_1.fasta Reads/352_2.fasta &> Logs/352 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_parahaemolyticus_RIMD_2210633_uid57969.fasta 0.0025 400 40 1277113 100 Reads/353_1.fasta Reads/353_2.fasta &> Logs/353 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_stutzeri_ATCC_17588___LMG_11199_uid68749.fasta 0.0025 400 40 1275313 100 Reads/354_1.fasta Reads/354_2.fasta &> Logs/354 &
VirtualNextGenSequencer Bacteria-Genomes/Thermococcus_gammatolerans_EJ3_uid59389.fasta 0.0025 400 40 1273520 100 Reads/355_1.fasta Reads/355_2.fasta &> Logs/355 &
VirtualNextGenSequencer Bacteria-Genomes/Micavibrio_aeruginosavorus_ARL_13_uid73585.fasta 0.0025 400 40 1271735 100 Reads/356_1.fasta Reads/356_2.fasta &> Logs/356 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_prowazekii_Madrid_E_uid61565.fasta 0.0025 400 40 1269958 100 Reads/357_1.fasta Reads/357_2.fasta &> Logs/357 &
VirtualNextGenSequencer Bacteria-Genomes/Sulfurihydrogenibium_YO3AOP1_uid58855.fasta 0.0025 400 40 1268188 100 Reads/358_1.fasta Reads/358_2.fasta &> Logs/358 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfobacca_acetoxidans_DSM_11109_uid65785.fasta 0.0025 400 40 1266425 100 Reads/359_1.fasta Reads/359_2.fasta &> Logs/359 &

wait
