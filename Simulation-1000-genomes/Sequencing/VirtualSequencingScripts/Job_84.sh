#!/bin/bash
#$ -N VirtualSequencer-84
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Sinorhizobium_medicae_WSM419_uid58549.fasta 0.0025 400 40 931794 100 Reads/664_1.fasta Reads/664_2.fasta &> Logs/664 &
VirtualNextGenSequencer Bacteria-Genomes/Deinococcus_proteolyticus_MRP_uid63399.fasta 0.0025 400 40 931095 100 Reads/665_1.fasta Reads/665_2.fasta &> Logs/665 &
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_maripaludis_C7_uid58847.fasta 0.0025 400 40 930396 100 Reads/666_1.fasta Reads/666_2.fasta &> Logs/666 &
VirtualNextGenSequencer Bacteria-Genomes/Cytophaga_hutchinsonii_ATCC_33406_uid57651.fasta 0.0025 400 40 929700 100 Reads/667_1.fasta Reads/667_2.fasta &> Logs/667 &
VirtualNextGenSequencer Bacteria-Genomes/Marivirga_tractuosa_DSM_4126_uid60837.fasta 0.0025 400 40 929005 100 Reads/668_1.fasta Reads/668_2.fasta &> Logs/668 &
VirtualNextGenSequencer Bacteria-Genomes/Xylanimonas_cellulosilytica_DSM_15894_uid41935.fasta 0.0025 400 40 928311 100 Reads/669_1.fasta Reads/669_2.fasta &> Logs/669 &
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_TCH8431_19A_uid49735.fasta 0.0025 400 40 927619 100 Reads/670_1.fasta Reads/670_2.fasta &> Logs/670 &
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_phymatum_STM815_uid58699.fasta 0.0025 400 40 926929 100 Reads/671_1.fasta Reads/671_2.fasta &> Logs/671 &

wait
