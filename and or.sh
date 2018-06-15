#!/bin/bash 
function haha(){
	echo "$1"
	return 0
}
var=diao 
test $var=diao && echo "var is diao" 
test $var=diao || echo "var isn't diao " 
test $var=diao && echo "var is diao" || echo "var isn't diao"
test $var=diao && haha 0 || haha 1
test $var=diao && { echo "wei";echo "diao" ; }
echo over 
