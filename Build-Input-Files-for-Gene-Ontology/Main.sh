#!/bin/bash
# encoding: UTF-8
# Author: Sébastien Boisvert
# Date: 2012-10-10

echo "Hi!"

echo "This script will download these:"
echo "- gene_association.goa_uniprot (uniprot -> gene ontology)"
echo "- idmapping.dat  (uniprot -> EMBL_CDS)"

sleep 5

echo ""

echo "Downloading Uniprot-GOA gene_association.goa_uniprot.gz"
wget ftp://ftp.ebi.ac.uk/pub/databases/GO/goa/UNIPROT/gene_association.goa_uniprot.gz
gunzip gene_association.goa_uniprot.gz

echo "Downloading mappings idmapping.dat.gz"
wget ftp://ftp.ebi.ac.uk/pub/databases/uniprot/current_release/knowledgebase/idmapping/idmapping.dat.gz
gunzip idmapping.dat.gz

echo "Building annotations 000-Annotations.txt"
./CreateBuild.py

ln -s Associations.txt 000-Annotations.txt

echo "Downloading cds.fasta.gz"
wget ftp://ftp.ebi.ac.uk/pub/databases/embl/cds/cds.fasta.gz
gunzip cds.fasta.gz 

echo "Rebuilding the fasta file, removing unannotated entries..."
./Rebuild-Fasta.py
ln -s Sequences-With-Annotations.fasta 000-Sequences.fasta

echo "Downloading Gene Ontology file obo_format_1_2/gene_ontology_ext.obo"
wget http://geneontology.org/ontology/obo_format_1_2/gene_ontology_ext.obo

ln -s gene_ontology_ext.obo 000-Ontologies.txt


echo "Generating parts."

./SplitLargeFastaFileInSmallerParts.py 000-Sequences.fasta 128

mkdir EMBL_CDS_Sequences
mv 000-Sequences.fasta.Part.*.fasta EMBL_CDS_Sequences

ln -s 000-Ontologies.txt OntologyTerms.txt
ln -s 000-Annotations.txt Annotations.txt

echo "Thank you for your kind patience !"

echo ""

echo "To use these builds with Ray Ontologies (via the Ray binary), add these options:"
echo ""

echo "-search $(pwd)/EMBL_CDS_Sequences \\" 
echo "-gene-ontology $(pwd)/OntologyTerms.txt  $(pwd)/Annotations.txt \\"

