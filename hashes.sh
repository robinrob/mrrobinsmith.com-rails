#!/usr/bin/env sh

files=`gfind . -iregex '.*\(rb\|haml\)' -printf '%p\n'`
for file in $files
do
	gsed -i.bak 's/\([a-z]*\)\(:\)\(\s*\)\([a-z]*\)/:\1 => \4/' $file
done