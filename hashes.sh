#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	echo "file: $file"
	gsed -i 's/\b\([a-z_]\+\):\{1\}\s\+\([a-z_0-9""'']*\)\b/:\1 => \2/g' $file
done