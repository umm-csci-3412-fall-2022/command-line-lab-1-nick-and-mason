#! /usr/bin/bash
temp_dir=$(mktemp -d -t scratch.XXX)
echo $temp_dir
tar -xf $1 -C $temp_dir
cd $temp_dir
pwd
echo  grep -l DELETEME!
echo "testing stuff"
