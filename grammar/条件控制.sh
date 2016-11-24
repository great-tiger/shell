#! /bin/bash

a=1
b=10

#第一种方式
if [ $a -ne $b ] ;then
	echo "a!=b"
fi

#第二种方式
if [ $a -eq $b ] ;then
	echo "a=b"
else
	echo "a!=b"
fi

#第三种方式
if [ $a -eq $b ] ;then
	echo "a=b"
elif [ $a -ne $b ]; then
	echo "a!=b"
elif [ $a -gt $b ]; then
	echo "a>b"
elif [ $a -lt $b ]; then
	echo "a<b"
fi