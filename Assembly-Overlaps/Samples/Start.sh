for i in $(cat ../SampleList.txt)
do
	cd $i

	msub job.sh

	cd ..
done
