#!/bin/bash
cat << haha
 	You can write like this :
 		\033[one;two;three m
 	This is called ansi color.
 	"echo -e " you can use escapes !
 	for more infomation ,try "man echo"
haha
#character attributes
a=(normal 0 
bold 1 
dim 2
italic 3
under 4
blink 5
six 6
revert 7
conceal 8
delete 9 
)  
#forecolor
b=(
black 30
red 31
green 32
yellow 33
blue 34
magenta 35
cyan 36
white 37 
)
#backcolor
c=(
black 40
red 41
green 42
yellow 43
blue 44
magenta 45
cyan 46
white 47
)
function show(){
	while test $# -gt 0;do
		echo  -e "\033[${2}m weidiao\033[0m   $1    $2" | column -t
		shift 2
	done
}
show ${a[*]}
echo ===============fore color ======================
show ${b[*]}
echo ================back color ====================
show ${c[*]}
echo ================random ========================
echo -e "\033[${b[3]};${c[1]}m weidiao is great\033[0m"

