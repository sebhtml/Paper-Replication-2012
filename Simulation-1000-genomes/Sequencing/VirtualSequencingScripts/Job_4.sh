#!/bin/bash
#$ -N VirtualSequencer-4
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_albilineans_GPE_PC73_uid43163.fasta 0.0025 400 40 4805747 100 Reads/24_1.fasta Reads/24_2.fasta &> Logs/24 &
VirtualNextGenSequencer Bacteria-Genomes/Starkeya_novella_DSM_506_uid48815.fasta 0.0025 400 40 4712422 100 Reads/25_1.fasta Reads/25_2.fasta &> Logs/25 &
VirtualNextGenSequencer Bacteria-Genomes/Pediococcus_pentosaceus_ATCC_25745_uid57981.fasta 0.0025 400 40 4624332 100 Reads/26_1.fasta Reads/26_2.fasta &> Logs/26 &
VirtualNextGenSequencer Bacteria-Genomes/Dyadobacter_fermentans_DSM_18053_uid59049.fasta 0.0025 400 40 4541004 100 Reads/27_1.fasta Reads/27_2.fasta &> Logs/27 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Liberibacter_asiaticus_psy62_uid59227.fasta 0.0025 400 40 4462024 100 Reads/28_1.fasta Reads/28_2.fasta &> Logs/28 &
VirtualNextGenSequencer Bacteria-Genomes/Onion_yellows_phytoplasma_OY_M_uid58015.fasta 0.0025 400 40 4387027 100 Reads/29_1.fasta Reads/29_2.fasta &> Logs/29 &
VirtualNextGenSequencer Bacteria-Genomes/Gluconobacter_oxydans_621H_uid58239.fasta 0.0025 400 40 4315688 100 Reads/30_1.fasta Reads/30_2.fasta &> Logs/30 &
VirtualNextGenSequencer Bacteria-Genomes/Cellulomonas_flavigena_DSM_20109_uid48821.fasta 0.0025 400 40 4247720 100 Reads/31_1.fasta Reads/31_2.fasta &> Logs/31 &

wait
