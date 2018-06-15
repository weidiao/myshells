#!/bin/bash
echo <<help
	getopts is very strict with the format.
	getopt is alike with getopts
	getopt is external tool
	getopts is shell's built-in
help

echo =========The first method========== 
while getopts ":ab:cd:e" op;do 
	case $op in 
	a|c|e) echo "$op";;
	b|d)echo "$op :$OPTARG";;
	?) echo "error ";;
	esac
done 
echo ============'echo -e'==============
echo 'echo -e output nothing ! But we can use the below method'
echo -n - ;echo e
echo ===========getopt=======
echo ========The second method=========
set -- `getopt ":ab:cd:e" $@ `

while test $# -gt 0;do
	echo "$#"
	case $1 in 
	-a | -c | '-e' ) echo "$1";shift;;
	-b | -d )echo "$1 :$2";shift 2;;
	-- ) echo "$1";shift;;
	esac
done
echo "over"
