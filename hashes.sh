#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	gsed -i.bak 's/\([a-z]*\)\(:\) \([a-z]*\)/:\1 => \3/g' $file
done