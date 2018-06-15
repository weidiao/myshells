#!/bin/bash
#call format: ./while 2 1 2 4
sum=0
echo -n "$# number's sum is :" 
while test $# -gt 0 
do 
	sum=`expr $sum + $1`
	shift
done
echo $sum
echo "=========get all the items under a folder"
find -maxdepth 1 |
while read d;do
	if test $d = '.' ;then echo "haha";fi
	echo ${d}
done
