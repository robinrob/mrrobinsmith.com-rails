#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	gsed -i 's/\([a-z_]\+\):\s*\([a-z]*\)/:\1 => \2/' $file
done