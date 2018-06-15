#!/bin/bash
cat << tell
		The return value of the function is [0,255]
		so the factorial must be wrong.
tell
function f(){
	if test $1 -eq 1 ;then return 1;fi
	f `expr $1 - 1`
	local ans=`expr $1 \* $?`
	return $ans
} 
function main(){
	local i=1
	while test $i -lt 8 ;do 
		f $i
		echo "$i!=$?"
		i=$(($i+1))	
	done
}
main
cat << help
	The method above is wrong !
	The below is right !
help
function go(){
	local a=()
	local ai=1
	a[0]=1
	while test $ai -lt 8 ;do
		local tmp=$((a[$((ai-1))]))
		a[$ai]=$((tmp*$ai))
		echo $ai! =${a[$ai]}
		ai=$((ai+1))
	done
}
go
