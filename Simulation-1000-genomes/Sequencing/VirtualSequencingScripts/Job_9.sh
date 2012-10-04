#!/bin/bash
#$ -N VirtualSequencer-9
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_pneumoniae_G54_uid59167.fasta 0.0025 400 40 2980398 100 Reads/64_1.fasta Reads/64_2.fasta &> Logs/64 &
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Zinderia_insecticola_CARI_uid52459.fasta 0.0025 400 40 2957733 100 Reads/65_1.fasta Reads/65_2.fasta &> Logs/65 &
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_aespoeensis_Aspo_2_uid42613.fasta 0.0025 400 40 2935577 100 Reads/66_1.fasta Reads/66_2.fasta &> Logs/66 &
VirtualNextGenSequencer Bacteria-Genomes/Lactobacillus_acidophilus_30SC_uid63605.fasta 0.0025 400 40 2913912 100 Reads/67_1.fasta Reads/67_2.fasta &> Logs/67 &
VirtualNextGenSequencer Bacteria-Genomes/Nitrosopumilus_maritimus_SCM1_uid58903.fasta 0.0025 400 40 2892720 100 Reads/68_1.fasta Reads/68_2.fasta &> Logs/68 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_bongori_NCTC_12419_uid70155.fasta 0.0025 400 40 2871983 100 Reads/69_1.fasta Reads/69_2.fasta &> Logs/69 &
VirtualNextGenSequencer Bacteria-Genomes/Pseudoxanthomonas_suwonensis_11_1_uid62105.fasta 0.0025 400 40 2851686 100 Reads/70_1.fasta Reads/70_2.fasta &> Logs/70 &
VirtualNextGenSequencer Bacteria-Genomes/Aerococcus_urinae_ACS_120_V_Col10a_uid64757.fasta 0.0025 400 40 2831813 100 Reads/71_1.fasta Reads/71_2.fasta &> Logs/71 &

wait
