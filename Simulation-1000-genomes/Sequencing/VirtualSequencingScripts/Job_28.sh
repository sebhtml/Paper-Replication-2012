#!/bin/bash
#$ -N VirtualSequencer-28
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_syringae_phaseolicola_1448A_uid58099.fasta 0.0025 400 40 1631177 100 Reads/216_1.fasta Reads/216_2.fasta &> Logs/216 &
VirtualNextGenSequencer Bacteria-Genomes/Aeromonas_hydrophila_ATCC_7966_uid58617.fasta 0.0025 400 40 1627431 100 Reads/217_1.fasta Reads/217_2.fasta &> Logs/217 &
VirtualNextGenSequencer Bacteria-Genomes/Geobacter_M21_uid59037.fasta 0.0025 400 40 1623711 100 Reads/218_1.fasta Reads/218_2.fasta &> Logs/218 &
VirtualNextGenSequencer Bacteria-Genomes/Micromonospora_aurantiaca_ATCC_27029_uid42501.fasta 0.0025 400 40 1620017 100 Reads/219_1.fasta Reads/219_2.fasta &> Logs/219 &
VirtualNextGenSequencer Bacteria-Genomes/gamma_proteobacterium_HdN1_uid51635.fasta 0.0025 400 40 1616348 100 Reads/220_1.fasta Reads/220_2.fasta &> Logs/220 &
VirtualNextGenSequencer Bacteria-Genomes/Bordetella_parapertussis_12822_uid57615.fasta 0.0025 400 40 1612703 100 Reads/221_1.fasta Reads/221_2.fasta &> Logs/221 &
VirtualNextGenSequencer Bacteria-Genomes/Chloroherpeton_thalassium_ATCC_35110_uid59187.fasta 0.0025 400 40 1609083 100 Reads/222_1.fasta Reads/222_2.fasta &> Logs/222 &
VirtualNextGenSequencer Bacteria-Genomes/Thermotoga_maritima_MSB8_uid57723.fasta 0.0025 400 40 1605487 100 Reads/223_1.fasta Reads/223_2.fasta &> Logs/223 &

wait
