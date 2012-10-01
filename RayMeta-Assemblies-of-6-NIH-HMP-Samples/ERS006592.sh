mpiexec -n 64 Ray \
 -o \
 Assembly \
 -k \
 31 \
 -p \
 Sample/ERR011192_1.fastq.gz \
 Sample/ERR011192_2.fastq.gz \
 -p \
 Sample/ERR011193_1.fastq.gz \
 Sample/ERR011193_2.fastq.gz \
 -s \
 Sample/ERR011192_1.fastq.gz \
 -s \
 Sample/ERR011192_2.fastq.gz \
 -s \
 Sample/ERR011193_1.fastq.gz \
 -s \
 Sample/ERR011193_2.fastq.gz 
