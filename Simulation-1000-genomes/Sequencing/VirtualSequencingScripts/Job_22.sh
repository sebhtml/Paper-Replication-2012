#!/bin/bash
#$ -N VirtualSequencer-22
#$ -P nne-790-ab
#$ -l h_rt=4:00:00
#$ -pe default 8
#$ -cwd
source Driver.colosse
PATH=.:$PATH

VirtualNextGenSequencer Bacteria-Genomes/Desulfurobacterium_thermolithotrophum_DSM_11699_uid63405.fasta 0.0025 400 40 1848364 100 Reads/168_1.fasta Reads/168_2.fasta &> Logs/168 &
VirtualNextGenSequencer Bacteria-Genomes/Ehrlichia_chaffeensis_Arkansas_uid57933.fasta 0.0025 400 40 1842920 100 Reads/169_1.fasta Reads/169_2.fasta &> Logs/169 &
VirtualNextGenSequencer Bacteria-Genomes/Neisseria_gonorrhoeae_FA_1090_uid57611.fasta 0.0025 400 40 1837523 100 Reads/170_1.fasta Reads/170_2.fasta &> Logs/170 &
VirtualNextGenSequencer Bacteria-Genomes/Mycoplasma_genitalium_G37_uid57707.fasta 0.0025 400 40 1832174 100 Reads/171_1.fasta Reads/171_2.fasta &> Logs/171 &
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_J99_uid57789.fasta 0.0025 400 40 1826871 100 Reads/172_1.fasta Reads/172_2.fasta &> Logs/172 &
VirtualNextGenSequencer Bacteria-Genomes/Parvularcula_bermudensis_HTCC2503_uid51641.fasta 0.0025 400 40 1821614 100 Reads/173_1.fasta Reads/173_2.fasta &> Logs/173 &
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Choleraesuis_SC_B67_uid58017.fasta 0.0025 400 40 1816402 100 Reads/174_1.fasta Reads/174_2.fasta &> Logs/174 &
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_BKT015925_uid66203.fasta 0.0025 400 40 1811234 100 Reads/175_1.fasta Reads/175_2.fasta &> Logs/175 &

wait
