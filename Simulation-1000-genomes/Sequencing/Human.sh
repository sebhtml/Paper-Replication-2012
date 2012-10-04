#!/bin/bash
#$ -N Human-Simulate
#$ -P nne-790-ab
#$ -l h_rt=16:00:00
#$ -pe default 8
#$ -cwd

source Driver.colosse

PATH=.:$PATH

VirtualNextGenSequencer hg19-all.fasta 0.0025 400 40 15000000 100 Reads/H_1.fasta Reads/H_2.fasta

