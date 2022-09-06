#! /usr/bin/bash
temp_dir=$(mktemp -d -t escratch.XXX)
tar -xf $1 -C $temp_dir
cd $temp_dir
cd little_dir
pwd
array=($(ls -d */))
for i in {0..$(ls | wc -1)}
do 
rm $(grep -e "DELETE ME!" ${array[i]}
done

