#!/bin/bash

if [ $# -ne 2 ]; then
	echo "need to have 2 paras"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
	echo "wrong directory"
	exit 1
fi

file_counts=$(find "$filesdir" -type f | wc -l)
line_counts=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $file_counts and the number of machting lines are $line_counts"
