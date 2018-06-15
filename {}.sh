#!/bin/bash
echo ==============string operation =================
n="1223"
echo ${n}
echo ${n:2:2} #substring : only can be used in bash,cannot be used in /bin/sh
echo ${#n} #length  : output the length of string 'n'
nn="$n""   haha $n" #string concatenation,or use : nn=` echo $n  haha $n `
echo $nn
echo ${n/[12]/3} #replace the first
echo ${n//[12]/3} #replace all of the patterns

<< expression
	can use regex in pattern
		echo ${n#pattern}   
		echo ${n##pattern}	
		echo ${n%pattern}
		echo ${n%%pattern}
	we can use these {} to parse the path
expression
str=weidiao
echo ${str#*i}  # delete the former part
echo ${str##*i} # delete the former part as long as possible
echo ${str%i*}  # delete the latter part
echo ${str%%i*} # delete the latter part as long as possible

echo $((n+10)) #'n' is a number,meanwhile a string.Everything is string in shell!

echo ============== array============================
a=(1   2 3 4   weidiao)
echo ${a[@]}
echo ${a[*]} #output all the items of 'a' in a line sperated by space
echo ${#a} #output the size of 'a'
echo ${a[4]} #the index start from 0
 
echo ============exist and not null=================
n=""
echo ${n:-"n is null or didn't defined"}
echo ${n:+"n is defined and it's not null"}
#echo ${n:?"n is null or not defined ! program will exit."}
echo ${n:="n doesn't exist and create it with this string"}
echo $n 

echo ============exisit===============================
n=""
echo ${n-"n didn't defined"}
echo ${n+"n is defined"}
echo ${n?"n is not defined ! program will exit."}
echo ${n="n doesn't exist and create it with this string"}
echo $n

echo ================env in awk============
export m=3;
m=$((m+4))
echo|awk '{ 
	for (i in ENVIRON)printf( "%s=%s\n",i,ENVIRON[i]);
	print ENVIRON["m"]
	ENVIRON["m"]=44;
	print ENVIRON["m"]
}'
echo $m
