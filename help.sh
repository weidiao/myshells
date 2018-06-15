#!/bin/bash
cat << passageName
how to show multi-lines ?
use "<< name" to start your passage
use "name" to end your passage,name should be placed at the end of the last line.
passageName

help="
	echo \"\$help\" is defferent
		from echo \$help
"  
echo "$help"
echo $help
 
