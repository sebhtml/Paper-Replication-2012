#!/bin/bash
# This scripts were tested individually, not as a whole

remotePackage="http://secondgenome1.s3.amazonaws.com/greengenes_reference_files/taxonomy_16S_all_gg_2011_1.txt.gz?AWSAccessKeyId=AKIAICKIGPBXNLBSJV7Q&Expires=1350736016&Signature=GU6mKdS8IiSbmTNckjn1LLVgMg8%3D"

wget $remotePackage

# remove the Amazon key
mv taxonomy_16S* taxonomy_16S_all_gg_2011_1.txt.gz

# generate TreeOfLife-Edges.tsv and Taxon-Names.tsv
zcat taxonomy_16S_all_gg_2011_1.txt.gz | \
./ExtractTree.py  taxonomy_16S-TreeOfLife-Edges.tsv taxonomy_16S-Taxon-Names.tsv



remotePackageForSequences="http://secondgenome1.s3.amazonaws.com/greengenes_reference_files/sequences_16S_all_gg_2011_1_unaligned.fasta.gz?AWSAccessKeyId=AKIAICKIGPBXNLBSJV7Q&Expires=1350736343&Signature=4m9loN3pTbBZw0Uq7YTZk9G6vRc%3D"

wget $remotePackageForSequences

mv sequences_16S* sequences_16S_all_gg_2011_1_unaligned.fasta.gz

zcat sequences_16S_all_gg_2011_1_unaligned.fasta.gz | \
./ExtractTree_from_fasta.py sequences_16S-TreeOfLife-Edges.tsv sequences_16S-Taxon-Names.tsv


# Quality control / 2012-10-20

#sequences_16S_all_gg_2011_1_unaligned.fasta \ 		PASS
#gi_to_accession.txt \					?
#Taxon-Names.tsv \  					PASS
#WholeGenome_GenomeToTaxon.tsv \			PASS  (output)
#GreenGene_GenomeToTaxon.tsv \				PASS  (output)
#GreenGenes.fasta					PASS  (output)
#NCBI-genome-fasta-headers.txt				PASS


# generate gi_to_accession
# this needs reference sequences.

grep '>' NCBI-Bacteria/last-build/*.fasta |sed 's/|/ /g'|awk '{print $2"\t"$4}' > gi_to_accession.NCBI-Bacteria.txt
grep '>' NCBI-Bacteria_DRAFT/last-build/*.fasta |sed 's/|/ /g'|awk '{print $2"\t"$4}' > gi_to_accession.NCBI-Bacteria_DRAFT.txt
grep '>' NCBI-Viruses/last-build/*.fasta |sed 's/|/ /g'|awk '{print $2"\t"$4}' > gi_to_accession.NCBI-Viruses.txt

cat gi_to_accession.NCBI-Bacteria.txt gi_to_accession.NCBI-Bacteria_DRAFT.txt gi_to_accession.NCBI-Viruses.txt \
> gi_to_accession.txt


wget ftp://ftp.ncbi.nih.gov/genomes/Bacteria/all.fna.tar.gz

mkdir all.fna
cd all.fna
tar xzf ../all.fna.tar.gz
cd ..
cat all.fna/*/*.fna|grep '>' > NCBI-genome-fasta-headers.txt

ln -s sequences_16S-TreeOfLife-Edges.tsv TreeOfLife-Edges.tsv
ln -s sequences_16S-Taxon-Names.tsv Taxon-Names.tsv

cat sequences_16S_all_gg_2011_1_unaligned.fasta.gz|gunzip > sequences_16S_all_gg_2011_1_unaligned.fasta

./PickUpTaxons.py NCBI-genome-fasta-headers.txt Taxon-Names.tsv  NCBI-genome-and-GreenGenes-Genome-to-Taxons.tsv 

#  ./Generate_GenomeToTaxon.py generates the file.
#ln -s NCBI-genome-and-GreenGenes-Genome-to-Taxons.tsv GreenGene_GenomeToTaxon.tsv

wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/gi_taxid_nucl.dmp.gz
gunzip gi_taxid_nucl.dmp.gz
ln -s gi_taxid_nucl.dmp WholeGenome_GenomeToTaxon.tsv

./Generate_GenomeToTaxon.py \
sequences_16S_all_gg_2011_1_unaligned.fasta \
gi_to_accession.txt \
Taxon-Names.tsv \
WholeGenome_GenomeToTaxon.tsv \
GreenGene_GenomeToTaxon.tsv \
GreenGenes.fasta

cat WholeGenome_GenomeToTaxon.tsv GreenGene_GenomeToTaxon.tsv > Genome-to-Taxon.tsv


