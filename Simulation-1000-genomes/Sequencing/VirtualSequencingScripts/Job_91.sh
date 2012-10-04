#!/bin/bash
#$ -N VirtualSequencer-91
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Taylorella_asinigenitalis_MCE3_uid73771.fasta 0.0025 400 40 894877 100 Reads/720_1.fasta Reads/720_2.fasta &> Logs/720 &
VirtualNextGenSequencer Bacteria-Genomes/Halothiobacillus_neapolitanus_c2_uid41317.fasta 0.0025 400 40 894257 100 Reads/721_1.fasta Reads/721_2.fasta &> Logs/721 &
VirtualNextGenSequencer Bacteria-Genomes/Propionibacterium_acnes_KPA171202_uid58101.fasta 0.0025 400 40 893638 100 Reads/722_1.fasta Reads/722_2.fasta &> Logs/722 &
VirtualNextGenSequencer Bacteria-Genomes/Xylella_fastidiosa_Temecula1_uid57869.fasta 0.0025 400 40 893021 100 Reads/723_1.fasta Reads/723_2.fasta &> Logs/723 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_casei_Zhang_uid50673.fasta 0.0025 400 40 892405 100 Reads/724_1.fasta Reads/724_2.fasta &> Logs/724 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfitobacterium_hafniense_Y51_uid58605.fasta 0.0025 400 40 891790 100 Reads/725_1.fasta Reads/725_2.fasta &> Logs/725 &
VirtualNextGenSequencer Bacteria-Genomes/Cyanothece_ATCC_51142_uid59013.fasta 0.0025 400 40 891176 100 Reads/726_1.fasta Reads/726_2.fasta &> Logs/726 &
VirtualNextGenSequencer Bacteria-Genomes/Buchnera_aphidicola_Tuc7__Acyrthosiphon_pisum__uid59283.fasta 0.0025 400 40 890564 100 Reads/727_1.fasta Reads/727_2.fasta &> Logs/727 &

wait
