#!/bin/bash 
eth="wlp3s0b1"
path="/proc/net/dev"
fx=`grep $eth  $path | awk ' { print $2 }' `
fy=` grep $eth $path | awk ' { print $10 }' `
sleep 2
tx=`grep $eth $path | awk ' { print $2 }' `
ty=` grep $eth $path | awk ' { print $10 }' `
v1=$(((tx-fx)/1024/2))
v2=$(((ty-fy)/1024/2))
echo "transmit:${v1}kb/s  receive:${v2}kb/s"
