#!/bin/bash
echo "
		令我惊讶的是declare只是简单的复制粘贴 !!!!!!!!!
		这就说明在shell中必须要使用之前先定义,不可以声明
		declare can only be used inside a function
		because the system firstly initialize the names,just like my 'kernel' language
		sometimes it's impossible to avoid recursive,e.g.
			function haha(){
				main();
			}
			function main(){
				haha();
			}
		in this codition,declare is necessary
	
"
function main(){
	declare -f haha
	haha 
}
function haha(){
	echo "weidiao"
}
main
