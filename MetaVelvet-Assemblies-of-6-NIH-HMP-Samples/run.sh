#!/bin/bash
# this is a wrapper for MetaVelvet
# it uses parameters as documented
# and custom insert length
# author: Sébastien Boisvert

sample=$1
k=51
output=$sample/velvet-block
data=$sample/block-device.fastq
insert=$(cat $sample/insert)

PATH=/home/boiseb01/MetaVelvet:$PATH

runCommand(){
	
	command=$1
	echo -e "\n\n$(date) <command>$command</command>\n\n"

	$command
}

echo "PATH= $PATH"


echo -e "$(date) Creating input device. \n"

if test -f $sample/velvet-block/Roadmaps
then
	touch $data
fi

if test -f $data
then
	echo "Data already generated."
else

	# decompress
	for i in $(ls $sample/*.gz)
	do
		gunzip $i
	done

	for i in $(ls $sample/|grep fastq$|grep _1)
	do
		j=$(echo $i|sed 's/_1/_2/g')

		runCommand "shuffleSequences_fastq.pl $sample/$i $sample/$j $sample/$i.1"

	done 

	cat $sample/*.1 > $data

	# remove shuffle files

	rm $sample/*.1

fi


echo "PATH= $PATH"

if test -f $sample/velvet-block/Roadmaps
then
	echo "" &> /dev/null
else
	echo -e "$(date) Running velveth \n"

	runCommand "velveth $output $k -fastq -shortPaired $data"
fi


if test -f $sample/velvet-block/LastGraph
then
	echo "" &> /dev/null
else
	echo -e "$(date) Running velvetg \n"

	runCommand "velvetg $output -exp_cov auto -ins_length $insert"
fi

if test -f $sample/velvet-block/meta-velvetg.contigs.fa
then
	echo "" &> /dev/null
else
	echo -e "$(date) Running meta-velvetg \n"

	runCommand "meta-velvetg $output -ins_length $insert"
fi

# remove data

#rm -rf $data

# recompress files
for i in $(ls $sample/*.fastq)
do
	gzip $i
done


