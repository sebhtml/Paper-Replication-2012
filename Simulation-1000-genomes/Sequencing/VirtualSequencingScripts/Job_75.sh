#!/bin/bash
#$ -N VirtualSequencer-75
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_longum_JCM_1217_uid62695.fasta 0.0025 400 40 986742 100 Reads/592_1.fasta Reads/592_2.fasta &> Logs/592 &
VirtualNextGenSequencer Bacteria-Genomes/Sodalis_glossinidius__morsitans__uid58553.fasta 0.0025 400 40 985911 100 Reads/593_1.fasta Reads/593_2.fasta &> Logs/593 &
VirtualNextGenSequencer Bacteria-Genomes/Bifidobacterium_longum_DJO10A_uid58833.fasta 0.0025 400 40 985082 100 Reads/594_1.fasta Reads/594_2.fasta &> Logs/594 &
VirtualNextGenSequencer Bacteria-Genomes/Leuconostoc_gasicomitatum_LMG_18811_uid50385.fasta 0.0025 400 40 984255 100 Reads/595_1.fasta Reads/595_2.fasta &> Logs/595 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pyogenes_MGAS6180_uid58335.fasta 0.0025 400 40 983431 100 Reads/596_1.fasta Reads/596_2.fasta &> Logs/596 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_N315_uid57837.fasta 0.0025 400 40 982608 100 Reads/597_1.fasta Reads/597_2.fasta &> Logs/597 &
VirtualNextGenSequencer Bacteria-Genomes/Leptospira_interrogans_serovar_Copenhageni_Fiocruz_L1_130_uid58065.fasta 0.0025 400 40 981787 100 Reads/598_1.fasta Reads/598_2.fasta &> Logs/598 &
VirtualNextGenSequencer Bacteria-Genomes/Ramlibacter_tataouinensis_TTB310_uid68279.fasta 0.0025 400 40 980969 100 Reads/599_1.fasta Reads/599_2.fasta &> Logs/599 &

wait
