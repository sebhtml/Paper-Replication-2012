for i in $(cat SampleList.txt); do wget $(cat $i) &> /dev/null & done

