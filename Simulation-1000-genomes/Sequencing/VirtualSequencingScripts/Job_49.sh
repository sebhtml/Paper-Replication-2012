#!/bin/bash
#$ -N VirtualSequencer-49
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Ammonifex_degensii_KC4_uid41053.fasta 0.0025 400 40 1224618 100 Reads/384_1.fasta Reads/384_2.fasta &> Logs/384 &
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_NATL2A_uid58359.fasta 0.0025 400 40 1223030 100 Reads/385_1.fasta Reads/385_2.fasta &> Logs/385 &
VirtualNextGenSequencer Bacteria-Genomes/Rhizobium_leguminosarum_bv__trifolii_WSM2304_uid58997.fasta 0.0025 400 40 1221449 100 Reads/386_1.fasta Reads/386_2.fasta &> Logs/386 &
VirtualNextGenSequencer Bacteria-Genomes/Paenibacillus_Y412MC10_uid41127.fasta 0.0025 400 40 1219874 100 Reads/387_1.fasta Reads/387_2.fasta &> Logs/387 &
VirtualNextGenSequencer Bacteria-Genomes/Enterobacter_asburiae_LF7a_uid72793.fasta 0.0025 400 40 1218305 100 Reads/388_1.fasta Reads/388_2.fasta &> Logs/388 &
VirtualNextGenSequencer Bacteria-Genomes/Bacteroides_salanitronis_DSM_18170_uid63269.fasta 0.0025 400 40 1216742 100 Reads/389_1.fasta Reads/389_2.fasta &> Logs/389 &
VirtualNextGenSequencer Bacteria-Genomes/Rhizobium_NGR234_uid59081.fasta 0.0025 400 40 1215185 100 Reads/390_1.fasta Reads/390_2.fasta &> Logs/390 &
VirtualNextGenSequencer Bacteria-Genomes/Listeria_monocytogenes_EGD_e_uid61583.fasta 0.0025 400 40 1213634 100 Reads/391_1.fasta Reads/391_2.fasta &> Logs/391 &

wait
