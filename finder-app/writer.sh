#!/bin/bash

if [ $# -ne 2 ]; then
	echo "need 2 parameters"
	exit 1
fi


writefile=$1
writestr=$2

dir=$(dirname "$writefile")
if [ ! -d "$dir" ]; then
	echo "directory does not exist, creating it"
	mkdir -p "$dir"
	if [ $? -ne 0 ]; then
		echo "could not create directory $dir"
		exit 1
	fi
fi

echo "$writestr" > "$writefile"

if [ $? -eq 0 ]; then
	echo "write to file succesfully"
else
	echo "fail to write";
	exit 1
fi
