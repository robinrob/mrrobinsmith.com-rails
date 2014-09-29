#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	gsed -i 's/\([a-z_]\+\):{1}\s*\([a-z_0-9]*\)/:\1 => \2/' $file
done