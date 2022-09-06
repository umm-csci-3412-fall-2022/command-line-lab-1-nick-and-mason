#! /usr/bin/bash
temp_dir=$(mktemp -d -t scratch.XXX)
tar -xf $1 -C $temp_dir
cd $temp_dir
cd little_dir
pwd
array=($(ls -d */))
for i in {0..$(ls | wc -1)}; if[grep -l "DELETE ME!" ]; then
       	rm ${array[i]}
else
	echo "not deleted"
fi
