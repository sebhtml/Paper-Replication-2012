#!/bin/bash
# encoding: UTF-8
# Author: Sébastien Boisvert
# Date: 2012-10-10

echo "Hi!"
echo "Welcome to Ray Technologies, where everything runs in parallel"
echo ""

echo "This script will download files and tell you what to do with them."
echo ""

echo "Computing nothing during 5 seconds, please wait."
sleep 5

echo ""

if test ! -f gene_association.goa_uniprot
then
	echo "Downloading Uniprot-GOA gene_association.goa_uniprot.gz"
	wget ftp://ftp.ebi.ac.uk/pub/databases/GO/goa/UNIPROT/gene_association.goa_uniprot.gz
	gunzip gene_association.goa_uniprot.gz
fi

if test ! -f idmapping.dat
then
	echo "Downloading mappings idmapping.dat.gz"
	wget ftp://ftp.ebi.ac.uk/pub/databases/uniprot/current_release/knowledgebase/idmapping/idmapping.dat.gz
	gunzip idmapping.dat.gz
fi

if test ! -f 000-Annotations.txt
then
	echo "Building annotations 000-Annotations.txt"
	./CreateBuild.py

	ln -s Associations.txt 000-Annotations.txt
fi

if test ! -f cds.fasta
then
	echo "Downloading cds.fasta.gz"
	wget ftp://ftp.ebi.ac.uk/pub/databases/embl/cds/cds.fasta.gz
	gunzip cds.fasta.gz 
fi

if test ! -f 000-Sequences.fasta
then
	echo "Rebuilding the fasta file, removing unannotated entries..."
	./Rebuild-Fasta.py
	ln -s Sequences-With-Annotations.fasta 000-Sequences.fasta
fi

if test ! -f 000-Ontologies.txt
then
	echo "Downloading Gene Ontology file obo_format_1_2/gene_ontology_ext.obo"
	wget http://geneontology.org/ontology/obo_format_1_2/gene_ontology_ext.obo

	ln -s gene_ontology_ext.obo 000-Ontologies.txt
fi

if test ! -d EMBL_CDS_Sequences
then
	echo "Generating parts."

	./SplitLargeFastaFileInSmallerParts.py 000-Sequences.fasta 128

	mkdir EMBL_CDS_Sequences
	mv 000-Sequences.Part.*.fasta EMBL_CDS_Sequences
fi

if test ! -f OntologyTerms.txt
then
	ln -s 000-Ontologies.txt OntologyTerms.txt
	ln -s 000-Annotations.txt Annotations.txt
fi

echo "Thank you for your kind patience !"

echo ""

echo "To use these builds with Ray Ontologies (via the Ray binary), add these options:"
echo ""

echo "-search \\"
echo "    $(pwd)/EMBL_CDS_Sequences \\" 
echo "-gene-ontology \\"
echo "    $(pwd)/OntologyTerms.txt \\"
echo "    $(pwd)/Annotations.txt \\"

