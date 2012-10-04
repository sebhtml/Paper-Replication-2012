#!/bin/bash
#$ -N VirtualSequencer-40
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Vibrio_fischeri_MJ11_uid58907.fasta 0.0025 400 40 1358184 100 Reads/312_1.fasta Reads/312_2.fasta &> Logs/312 &
VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_lettingae_TMO_uid58419.fasta 0.0025 400 40 1356020 100 Reads/313_1.fasta Reads/313_2.fasta &> Logs/313 &
VirtualNextGenSequencer Bacteria-Genomes/Marinithermus_hydrothermalis_DSM_14884_uid65783.fasta 0.0025 400 40 1353866 100 Reads/314_1.fasta Reads/314_2.fasta &> Logs/314 &
VirtualNextGenSequencer Bacteria-Genomes/Dickeya_zeae_Ech1591_uid59297.fasta 0.0025 400 40 1351722 100 Reads/315_1.fasta Reads/315_2.fasta &> Logs/315 &
VirtualNextGenSequencer Bacteria-Genomes/Clavibacter_michiganensis_NCPPB_382_uid61625.fasta 0.0025 400 40 1349588 100 Reads/316_1.fasta Reads/316_2.fasta &> Logs/316 &
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_atrophaeus_1942_uid59887.fasta 0.0025 400 40 1347464 100 Reads/317_1.fasta Reads/317_2.fasta &> Logs/317 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pseudotuberculosis_IP_32953_uid58157.fasta 0.0025 400 40 1345351 100 Reads/318_1.fasta Reads/318_2.fasta &> Logs/318 &
VirtualNextGenSequencer Bacteria-Genomes/Comamonas_testosteroni_CNB_2_uid62961.fasta 0.0025 400 40 1343247 100 Reads/319_1.fasta Reads/319_2.fasta &> Logs/319 &

wait
