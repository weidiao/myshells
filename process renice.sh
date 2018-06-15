#!/bin/bash
PIDS=`top -bn 1 | grep "^ *[1-9]" | awk '{ if($9 > 50 || $10 > 25 && id -u $2 > 500) print $1}'
for PID in $PIDS;do
	renice +10 $PID
	echo "renice +10 $PID"
done
