#!/bin/bash
#$ -N VirtualSequencer-68
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Corynebacterium_efficiens_YS_314_uid62905.fasta 0.0025 400 40 1036916 100 Reads/536_1.fasta Reads/536_2.fasta &> Logs/536 &
VirtualNextGenSequencer Bacteria-Genomes/Alkaliphilus_oremlandii_OhILAs_uid58495.fasta 0.0025 400 40 1035952 100 Reads/537_1.fasta Reads/537_2.fasta &> Logs/537 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_plantarum_ST_III_uid53537.fasta 0.0025 400 40 1034991 100 Reads/538_1.fasta Reads/538_2.fasta &> Logs/538 &
VirtualNextGenSequencer Bacteria-Genomes/Propionibacterium_freudenreichii_shermanii_CIRM_BIA1_uid49535.fasta 0.0025 400 40 1034032 100 Reads/539_1.fasta Reads/539_2.fasta &> Logs/539 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_burgdorferi_ZS7_uid59429.fasta 0.0025 400 40 1033076 100 Reads/540_1.fasta Reads/540_2.fasta &> Logs/540 &
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_duttonii_Ly_uid58791.fasta 0.0025 400 40 1032123 100 Reads/541_1.fasta Reads/541_2.fasta &> Logs/541 &
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_O111_H__11128_uid41023.fasta 0.0025 400 40 1031172 100 Reads/542_1.fasta Reads/542_2.fasta &> Logs/542 &
VirtualNextGenSequencer Bacteria-Genomes/Carboxydothermus_hydrogenoformans_Z_2901_uid57821.fasta 0.0025 400 40 1030223 100 Reads/543_1.fasta Reads/543_2.fasta &> Logs/543 &

wait
