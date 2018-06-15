#!/bin/bash
eth="wlp3s0b1"
# 网速检测器
RXpre=$(ifconfig ${eth} | grep bytes | awk '{print $2}'| awk -F":" '{print $2}')
TXpre=$(ifconfig ${eth} | grep bytes | awk '{print $6}' | awk -F":" '{print $2}')
sleep 1
RXnext=$(ifconfig ${eth} | grep bytes | awk '{print $2}'| awk -F":" '{print $2}')
TXnext=$(ifconfig ${eth} | grep bytes | awk '{print $6}' | awk -F":" '{print $2}')
echo "RX(receive) ----- TX(transmit)"
echo "$(((${RXnext}-${RXpre})/1024))KB/s $(((${TXnext}-${TXpre})/1024))KB/s"
