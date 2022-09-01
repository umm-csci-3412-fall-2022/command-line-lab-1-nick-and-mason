#! /usr/bin/bash
temp_dir=$(mktemp -d -t scratch-XXXi)
tarchive = $1
tar -xf tarchive -C ./temp_dir


