#! /usr/bin/bash
temp_dir=$(mktemp -d -t escratch.XXX)
here=$(pwd)
tar -xf "$1" -C "$temp_dir"
cd "$temp_dir" || exit
file_name=$(basename -s .tgz "$1")
cd "$file_name" || exit
grep -l "DELETE ME!" ./*| xargs rm
cd .. || exit 
tar -cvzf cleaned_"$1" "$file_name" 
mv cleaned_"$1" "$here"
