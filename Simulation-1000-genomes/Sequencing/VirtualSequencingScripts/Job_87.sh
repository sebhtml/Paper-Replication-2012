#!/bin/bash
#$ -N VirtualSequencer-87
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Dickeya_dadantii_Ech586_uid42519.fasta 0.0025 400 40 915422 100 Reads/688_1.fasta Reads/688_2.fasta &> Logs/688 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_SY8519_uid68705.fasta 0.0025 400 40 914758 100 Reads/689_1.fasta Reads/689_2.fasta &> Logs/689 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pseudotuberculosis_YPIII_uid59151.fasta 0.0025 400 40 914096 100 Reads/690_1.fasta Reads/690_2.fasta &> Logs/690 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Blochmannia_floridanus_uid57999.fasta 0.0025 400 40 913435 100 Reads/691_1.fasta Reads/691_2.fasta &> Logs/691 &
VirtualNextGenSequencer Bacteria-Genomes/Maricaulis_maris_MCS10_uid58689.fasta 0.0025 400 40 912776 100 Reads/692_1.fasta Reads/692_2.fasta &> Logs/692 &
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pseudotuberculosis_PB1__uid59153.fasta 0.0025 400 40 912118 100 Reads/693_1.fasta Reads/693_2.fasta &> Logs/693 &
VirtualNextGenSequencer Bacteria-Genomes/Rickettsia_rickettsii_Iowa_uid58961.fasta 0.0025 400 40 911462 100 Reads/694_1.fasta Reads/694_2.fasta &> Logs/694 &
VirtualNextGenSequencer Bacteria-Genomes/Ureaplasma_urealyticum_serovar_10_ATCC_33699_uid59011.fasta 0.0025 400 40 910807 100 Reads/695_1.fasta Reads/695_2.fasta &> Logs/695 &

wait
