#!/bin/bash

for i in $(cat Samples.todo)
do
	./run.sh $i &> $i.log 
done
