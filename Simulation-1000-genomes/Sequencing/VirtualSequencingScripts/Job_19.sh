#!/bin/bash
#$ -N VirtualSequencer-19
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Porphyromonas_gingivalis_TDC60_uid67407.fasta 0.0025 400 40 1995478 100 Reads/144_1.fasta Reads/144_2.fasta &> Logs/144 &
VirtualNextGenSequencer Bacteria-Genomes/Wolinella_succinogenes_DSM_1740_uid61591.fasta 0.0025 400 40 1988632 100 Reads/145_1.fasta Reads/145_2.fasta &> Logs/145 &
VirtualNextGenSequencer Bacteria-Genomes/Syntrophobotulus_glycolicus_DSM_8271_uid63343.fasta 0.0025 400 40 1981857 100 Reads/146_1.fasta Reads/146_2.fasta &> Logs/146 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudoalteromonas_atlantica_T6c_uid58283.fasta 0.0025 400 40 1975150 100 Reads/147_1.fasta Reads/147_2.fasta &> Logs/147 &
VirtualNextGenSequencer Bacteria-Genomes/Xylella_fastidiosa_9a5c_uid57849.fasta 0.0025 400 40 1968511 100 Reads/148_1.fasta Reads/148_2.fasta &> Logs/148 &
VirtualNextGenSequencer Bacteria-Genomes/Aeromonas_salmonicida_A449_uid58631.fasta 0.0025 400 40 1961938 100 Reads/149_1.fasta Reads/149_2.fasta &> Logs/149 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_reuteri_JCM_1112_uid58875.fasta 0.0025 400 40 1955431 100 Reads/150_1.fasta Reads/150_2.fasta &> Logs/150 &
VirtualNextGenSequencer Bacteria-Genomes/Picrophilus_torridus_DSM_9790_uid58041.fasta 0.0025 400 40 1948988 100 Reads/151_1.fasta Reads/151_2.fasta &> Logs/151 &

wait
