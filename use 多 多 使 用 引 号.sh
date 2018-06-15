#!/bin/bash
echo "
===========this file's name is designed for this shell ======
./use xxxxx   *
you will see the difference
"
for i in "$@";do
	echo "$i"
done

echo ============

for i in $@ ;do
	echo "$i"
done
