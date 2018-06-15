#!/bin/bash
echo -e "
	set -u  must define before use ,otherwise exit
		it\'s the same with 'set -onounset'
	set -e  exit the script as long as the return value is not 0. This will make you cannot use \$? (because it's always 0)
		it's the same with set -onoerrexit
	程序防御 - 考虑意料之外的事
		你的脚本也许会被放到“意外”的账户下运行，像缺少文件或者目录没有被创建等情况。你可以做一些预防这些错误事情。
		比如，当你创建一个目录后，如果父目录不存在，mkdir 命令会返回一个错误。如果你创建目录时给mkdir命令加上-p选项，它会在创建需要的目录前，把需要的父目录创建出来。
		另一个例子是 rm 命令。如果你要删除一个不存在的文件，它会“吐槽”并且你的脚本会停止工作。（因为你使用了-e选项，对吧？）你可以使用-f选项来解决这个问题，在文件不存在的时候让脚本继续工作。 
	set -o pipefail
	
	trap command signal [signal ...]

	你可以链接多个信号（列表可以使用kill -l获得），但是为了清理残局，我们只使用其中的三个：INT，TERM和EXIT。你可以使用-as来让traps恢复到初始状态。
	信号描述
INT 	
Interrupt - 当有人使用Ctrl-C终止脚本时被触发
TERM 	
" 
