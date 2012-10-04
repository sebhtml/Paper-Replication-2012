#!/bin/bash
#$ -N VirtualSequencer-42
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Photorhabdus_luminescens_laumondii_TTO1_uid61593.fasta 0.0025 400 40 1324747 100 Reads/328_1.fasta Reads/328_2.fasta &> Logs/328 &
VirtualNextGenSequencer Bacteria-Genomes/Rahnella_Y9602_uid62715.fasta 0.0025 400 40 1322738 100 Reads/329_1.fasta Reads/329_2.fasta &> Logs/329 &
VirtualNextGenSequencer Bacteria-Genomes/Mannheimia_succiniciproducens_MBEL55E_uid58197.fasta 0.0025 400 40 1320739 100 Reads/330_1.fasta Reads/330_2.fasta &> Logs/330 &
VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_neapolitana_DSM_4359_uid59065.fasta 0.0025 400 40 1318748 100 Reads/331_1.fasta Reads/331_2.fasta &> Logs/331 &
VirtualNextGenSequencer Bacteria-Genomes/Porphyromonas_gingivalis_ATCC_33277_uid58879.fasta 0.0025 400 40 1316767 100 Reads/332_1.fasta Reads/332_2.fasta &> Logs/332 &
VirtualNextGenSequencer Bacteria-Genomes/Streptomyces_cattleya_NRRL_8057_uid77117.fasta 0.0025 400 40 1314794 100 Reads/333_1.fasta Reads/333_2.fasta &> Logs/333 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_BisB5_uid58441.fasta 0.0025 400 40 1312830 100 Reads/334_1.fasta Reads/334_2.fasta &> Logs/334 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_BisB18_uid58443.fasta 0.0025 400 40 1310875 100 Reads/335_1.fasta Reads/335_2.fasta &> Logs/335 &

wait
