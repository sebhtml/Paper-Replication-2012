mkdir Samples
cd Samples

for i in $(cat ../SampleList.txt)
do
	mkdir $i

	cd $i

	mkdir Reads
	cd Reads
	for j in $(find ../../../$i-Reads/|grep fastq)
	do
		ln -s $j
	done
	cd ..

	mkdir Assemblies
	cd Assemblies
	ln -s ../../../$i-RayMeta.fasta RayMeta.fasta
	ln -s ../../../$i-MetaVelvet.fasta MetaVelvet.fasta
	cd ..

	cd ..
done
