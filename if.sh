#!/bin/sh
#"man test"can see helps about 'test'
#set -x#-x
echo 'please input one number'
read num
echo "The number is $num"
if [ $num -lt 0 ];then 
	echo "It's a negative number!"
elif [ $num -gt 0 ]; then
	echo "It's a positive number"
else echo "It's zero!"
fi
if [ $num -eq 0 ] ;then
	echo "It's zero defnitely!"
fi
if true ;then echo it\'s true;fi
if false ;then echo it\'s false;fi
