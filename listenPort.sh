#!/bin/bash

# 每一秒中判断3306端是否监听，再做下一步操作

len=0
while [ $len -eq 0 ];do
	sleep 1s
	z=`netstat -ant | grep 3306`
	#得到z变量字符串的长度
	len=${#z}
done

