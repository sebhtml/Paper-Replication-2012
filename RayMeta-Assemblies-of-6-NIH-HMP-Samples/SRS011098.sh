mpiexec -n 64 Ray \
 -o \
 Assembly \
 -k \
 31 \
 -p \
 Sample/SRR062051_1.fastq.gz \
 Sample/SRR062051_2.fastq.gz \
 -p \
 Sample/SRR062052_1.fastq.gz \
 Sample/SRR062052_2.fastq.gz \
 -s \
 Sample/SRR055676.fastq.gz \
 -s \
 Sample/SRR055756.fastq.gz \
 -s \
 Sample/SRR056894.fastq.gz \
 -s \
 Sample/SRR056977.fastq.gz \
 -s \
 Sample/SRR059326.fastq.gz \
 -s \
 Sample/SRR059327.fastq.gz 
