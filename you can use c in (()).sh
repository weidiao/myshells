#!/bin/bash
cat << haha
	inside '((' and '))' you can use everything in c language
haha 
haha

echo $haha
i=0 
echo $((++i))
echo $((i++))
echo $i
((i=i*7))
echo $i
if((i==14));then echo "haha";else echo "baga";fi 
for((i=0;i<3;i++));do echo weidiao ;done
while read line ;do echo $line ;done < "tmp.txt"
for i in `cat tmp.txt`;do echo $i;done

