#!/bin/bash
#$ -N VirtualSequencer-82
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Jonesia_denitrificans_DSM_20603_uid59053.fasta 0.0025 400 40 943210 100 Reads/648_1.fasta Reads/648_2.fasta &> Logs/648 &
VirtualNextGenSequencer Bacteria-Genomes/Staphylococcus_aureus_USA300_TCH1516_uid58925.fasta 0.0025 400 40 942484 100 Reads/649_1.fasta Reads/649_2.fasta &> Logs/649 &
VirtualNextGenSequencer Bacteria-Genomes/Vibrio_fischeri_ES114_uid58163.fasta 0.0025 400 40 941760 100 Reads/650_1.fasta Reads/650_2.fasta &> Logs/650 &
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_baltica_OS195_uid58261.fasta 0.0025 400 40 941038 100 Reads/651_1.fasta Reads/651_2.fasta &> Logs/651 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_CCGE1003_uid46253.fasta 0.0025 400 40 940317 100 Reads/652_1.fasta Reads/652_2.fasta &> Logs/652 &
VirtualNextGenSequencer Bacteria-Genomes/Mycobacterium_avium_paratuberculosis_K_10_uid57699.fasta 0.0025 400 40 939598 100 Reads/653_1.fasta Reads/653_2.fasta &> Logs/653 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfohalobium_retbaense_DSM_5692_uid59183.fasta 0.0025 400 40 938880 100 Reads/654_1.fasta Reads/654_2.fasta &> Logs/654 &
VirtualNextGenSequencer Bacteria-Genomes/Acholeplasma_laidlawii_PG_8A_uid58901.fasta 0.0025 400 40 938164 100 Reads/655_1.fasta Reads/655_2.fasta &> Logs/655 &

wait
