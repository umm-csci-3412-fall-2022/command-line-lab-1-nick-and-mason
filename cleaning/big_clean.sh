#! /usr/bin/bash
temp_dir=$(mktemp -d -t scratch-XXX)
tar -xf $1 -C temp_dir
cd temp_dir
echo  grep -l DELETEME! 

