#! /usr/bin/bash
temp_dir=$(mktemp -d -t escratch.XXX)
tar -xf $1 -C $temp_dir
cd $temp_dir
cd little_dir
ls
echo $(grep -l "DELETE ME!" *)
grep -l "DELETE ME!" *| xargs rm
ls
touch cleaned_little_dir.tgz
