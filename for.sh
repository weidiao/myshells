#!/bin/sh
echo "The $# arguments are:$*"
echo $@
for i in $*
do 
	sum=`expr $sum + $i`
done
echo $sum
