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


#if 后面紧跟一个命令，如果命令的返回状态码0，则执行then逻辑。
if date ; then
  echo "it worked"
fi
#那下面的写法是怎么回事呢？其实下面的写法是test命令的另一种写法
if [ $a -ne $b ] ;then
	echo "a!=b"
fi


#if then 的高级特性

# if ((expression)) ; then 
# fi
# ((expression)) 中就可以写一些复杂的表达式了。
if (( 2**2>2 )) ;then
 echo "2**2>2"
fi

# if [[ expression ]] ; then
# fi 
# [[ expression ]] 提供的针对字符串的高级特性
# 支持模式匹配
if [[ $USER == r* ]] ; then
	echo "hello $USER"
else
	echo "I don't konw you"
fi





