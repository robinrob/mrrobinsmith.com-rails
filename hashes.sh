#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	echo "file: $file"
	gsed -i 's/\b\([a-z_]\+\):\{1\}\s\+\([[:print:]]*\)\b/:\1 => \2/g' $file
done