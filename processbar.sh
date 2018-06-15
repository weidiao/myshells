#!/bin/bash
echo -e 'weidiao\rhaha' 
now=0
process=''
while test $now -lt 30;do
	process="${process}#"
	now=$((now+1))
	echo -en "\r$process$((now*100/30))"
	sleep 0.1
done