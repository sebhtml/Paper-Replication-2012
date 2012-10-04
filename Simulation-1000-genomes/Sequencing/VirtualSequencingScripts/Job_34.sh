#!/bin/bash
#$ -N VirtualSequencer-34
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Sulfolobus_islandicus_Y_N_15_51_uid58825.fasta 0.0025 400 40 1476073 100 Reads/264_1.fasta Reads/264_2.fasta &> Logs/264 &
VirtualNextGenSequencer Bacteria-Genomes/Megasphaera_elsdenii_DSM_20460_uid71135.fasta 0.0025 400 40 1473296 100 Reads/265_1.fasta Reads/265_2.fasta &> Logs/265 &
VirtualNextGenSequencer Bacteria-Genomes/Methanoregula_boonei_6A8_uid58815.fasta 0.0025 400 40 1470535 100 Reads/266_1.fasta Reads/266_2.fasta &> Logs/266 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_A2_Kyoto_uid59229.fasta 0.0025 400 40 1467789 100 Reads/267_1.fasta Reads/267_2.fasta &> Logs/267 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_maripaludis_C5_uid58741.fasta 0.0025 400 40 1465058 100 Reads/268_1.fasta Reads/268_2.fasta &> Logs/268 &
VirtualNextGenSequencer Bacteria-Genomes/Treponema_succinifaciens_DSM_2489_uid65781.fasta 0.0025 400 40 1462342 100 Reads/269_1.fasta Reads/269_2.fasta &> Logs/269 &
VirtualNextGenSequencer Bacteria-Genomes/Anaplasma_marginale_Maries_uid57629.fasta 0.0025 400 40 1459642 100 Reads/270_1.fasta Reads/270_2.fasta &> Logs/270 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_axonopodis_citri_306_uid57889.fasta 0.0025 400 40 1456956 100 Reads/271_1.fasta Reads/271_2.fasta &> Logs/271 &

wait
