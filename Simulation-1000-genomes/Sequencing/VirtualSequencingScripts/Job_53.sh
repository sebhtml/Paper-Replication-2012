#!/bin/bash
#$ -N VirtualSequencer-53
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Hamiltonella_defensa_5AT__Acyrthosiphon_pisum__uid59289.fasta 0.0025 400 40 1176692 100 Reads/416_1.fasta Reads/416_2.fasta &> Logs/416 &
VirtualNextGenSequencer Bacteria-Genomes/Runella_slithyformis_DSM_19594_uid68317.fasta 0.0025 400 40 1175284 100 Reads/417_1.fasta Reads/417_2.fasta &> Logs/417 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_hyopneumoniae_232_uid58205.fasta 0.0025 400 40 1173880 100 Reads/418_1.fasta Reads/418_2.fasta &> Logs/418 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodoferax_ferrireducens_T118_uid58353.fasta 0.0025 400 40 1172482 100 Reads/419_1.fasta Reads/419_2.fasta &> Logs/419 &
VirtualNextGenSequencer Bacteria-Genomes/Bordetella_pertussis_Tohama_I_uid57617.fasta 0.0025 400 40 1171089 100 Reads/420_1.fasta Reads/420_2.fasta &> Logs/420 &
VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_tengcongensis_MB4_uid57813.fasta 0.0025 400 40 1169700 100 Reads/421_1.fasta Reads/421_2.fasta &> Logs/421 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_L2b_UCH_1_proctitis_uid61635.fasta 0.0025 400 40 1168317 100 Reads/422_1.fasta Reads/422_2.fasta &> Logs/422 &
VirtualNextGenSequencer Bacteria-Genomes/Heliobacterium_modesticaldum_Ice1_uid58279.fasta 0.0025 400 40 1166938 100 Reads/423_1.fasta Reads/423_2.fasta &> Logs/423 &

wait
