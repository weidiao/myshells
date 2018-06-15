#!/bin/sh
#set -x
echo -n please input two integers : 
read one two
sum=$((one+two))  
dif=`echo $one-$two |bc`
pro=`expr $one \* $two`
ratio=` expr $one / $two` 
echo $one+$two=$sum
echo $one-$two=$dif 
echo $one*$two=$pro 
echo $one/$two=$ratio
