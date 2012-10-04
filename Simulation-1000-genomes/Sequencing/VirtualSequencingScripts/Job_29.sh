#!/bin/bash
#$ -N VirtualSequencer-29
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Paratyphi_B_SPB7_uid59097.fasta 0.0025 400 40 1601916 100 Reads/224_1.fasta Reads/224_2.fasta &> Logs/224 &
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_HaA2_uid58439.fasta 0.0025 400 40 1598368 100 Reads/225_1.fasta Reads/225_2.fasta &> Logs/225 &
VirtualNextGenSequencer Bacteria-Genomes/Chlorobaculum_parvum_NCIB_8327_uid59185.fasta 0.0025 400 40 1594843 100 Reads/226_1.fasta Reads/226_2.fasta &> Logs/226 &
VirtualNextGenSequencer Bacteria-Genomes/Salinibacter_ruber_DSM_13855_uid58513.fasta 0.0025 400 40 1591342 100 Reads/227_1.fasta Reads/227_2.fasta &> Logs/227 &
VirtualNextGenSequencer Bacteria-Genomes/Chlamydia_trachomatis_A_HAR_13_uid58333.fasta 0.0025 400 40 1587863 100 Reads/228_1.fasta Reads/228_2.fasta &> Logs/228 &
VirtualNextGenSequencer Bacteria-Genomes/Oceanithermus_profundus_DSM_14977_uid60855.fasta 0.0025 400 40 1584408 100 Reads/229_1.fasta Reads/229_2.fasta &> Logs/229 &
VirtualNextGenSequencer Bacteria-Genomes/Xanthomonas_campestris_vesicatoria_85_10_uid58321.fasta 0.0025 400 40 1580975 100 Reads/230_1.fasta Reads/230_2.fasta &> Logs/230 &
VirtualNextGenSequencer Bacteria-Genomes/Dehalococcoides_ethenogenes_195_uid57763.fasta 0.0025 400 40 1577564 100 Reads/231_1.fasta Reads/231_2.fasta &> Logs/231 &

wait
