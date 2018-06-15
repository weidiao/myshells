#!/bin/bash
function isPrime(){ 
	local i=2
	while test $i -lt $1 ;do
		local t=`expr $1 % $i`
		if test $t -eq 0 ;then return 0;fi;
		i=`expr $i + 1`;done
	return 1
}
main(){
	local i=2
	while test $i -lt 100;do 
		isPrime $i
		if test $? -eq 1;then echo $i;fi
		i=`expr $i + 1`;done 
}
main
