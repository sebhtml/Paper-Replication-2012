#!/bin/bash
#$ -N VirtualSequencer-37
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Isoptericola_variabilis_225_uid67501.fasta 0.0025 400 40 1413455 100 Reads/288_1.fasta Reads/288_2.fasta &> Logs/288 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Paratyphi_C_RKS4594_uid59063.fasta 0.0025 400 40 1411016 100 Reads/289_1.fasta Reads/289_2.fasta &> Logs/289 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_anthracis_CDC_684_uid59303.fasta 0.0025 400 40 1408589 100 Reads/290_1.fasta Reads/290_2.fasta &> Logs/290 &
VirtualNextGenSequencer Bacteria-Genomes/Acaryochloris_marina_MBIC11017_uid58167.fasta 0.0025 400 40 1406175 100 Reads/291_1.fasta Reads/291_2.fasta &> Logs/291 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_cholerae_O1_biovar_El_Tor_N16961_uid57623.fasta 0.0025 400 40 1403774 100 Reads/292_1.fasta Reads/292_2.fasta &> Logs/292 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_cereus_ATCC_14579_uid57975.fasta 0.0025 400 40 1401384 100 Reads/293_1.fasta Reads/293_2.fasta &> Logs/293 &
VirtualNextGenSequencer Bacteria-Genomes/Pedobacter_heparinus_DSM_2366_uid59111.fasta 0.0025 400 40 1399007 100 Reads/294_1.fasta Reads/294_2.fasta &> Logs/294 &
VirtualNextGenSequencer Bacteria-Genomes/Pelagibacterium_halotolerans_B2_uid74393.fasta 0.0025 400 40 1396642 100 Reads/295_1.fasta Reads/295_2.fasta &> Logs/295 &

wait
