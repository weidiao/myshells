#!/bin/bash
echo ======get the cnt\(items\) of a folder=====
root=`pwd`
echo ${root##/}
echo `ls -la | wc -l ` 

echo "
		======get all items of a folder======
		这种方法非常好,通过find -maxdepth 1 指令能够只搜索当前目录,输出是每个文件一行
		我本来想用ls -l, 需要分割第9个字段值后的全部字段
"
find . -maxdepth 1 -type d |
while read dir; 
do
    count=$(find "$dir" -type f | wc -l)
    echo "$dir:$count"
done
echo "
	下面这种方法是错误的,如果目录下存在wei diao ha ha.txt,就会错误的解释成4格文件
"
count=0
for sub_dir in `ls $dir`
do
        array[$count]=$sub_dir
        count=`expr $count + 1`
done
for i in ${array[*]} ;do
	echo  "$i"
done 
for((i=0;i<"${#array[*]}";i=i+1));do
        echo ${array[$i]}
done 
echo "
	use function to get all items
"
function _get(){
	while (($#>0)) ;do
		echo $1;shift
	done
}
function get(){
	_get *
}
get 


