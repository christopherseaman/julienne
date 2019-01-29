#!/bin/sh

for file in "$@"
do
	echo "\t'"$file"'" ' : ' `sed -e $'s/\t/: \"/' $file | sed -e $'s/$/\", /g' | tr '\n' ' ' | sed -e $'s/^/\{/' | sed -e $'s/,  $/\},/'`
done
