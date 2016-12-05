# Shell 函数的定义格式如下：
# function_name () {
#     list of commands
#     [ return value ]
# }
# 如果你愿意，也可以在函数名前加上关键字 function：
# function function_name () {
#     list of commands
#     [ return value ]
# }
# 函数返回值，可以显式增加return语句；如果不加，会将最后一条命令运行结果作为返回值。

# Shell 函数返回值只能是整数，一般用来表示函数执行成功与否，0表示成功，其他值表示失败。如果 return 其他数据，比如一个字符串，往往会得到错误提示：“numeric argument required”。

# 如果你希望直接从终端调用函数，可以将函数定义在主目录下的 .profile 文件，这样每次登录后，在命令提示符后面输入函数名字就可以立即调用。


# Define your function here
Hello () {
   echo "Url is http://see.xidian.edu.cn/cpp/shell/"
}
# Invoke your function  不用加括弧
Hello




funWithParam(){
    echo "The value of the first parameter is $1 !"
    echo "The value of the second parameter is $2 !"
    echo "The value of the tenth parameter is $10 !" # 10及之后就要加大括弧了
    echo "The value of the tenth parameter is ${10} !"
    echo "The value of the eleventh parameter is ${11} !"
    echo "The amount of the parameters is $# !"  # 参数个数
    echo "The string of the parameters is $* !"  # 传递给函数的所有参数
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73


# 获取函数返回值的第三种方法
function db1(){
        read -p "Enter a number :" value
        echo $[ $value * 2 ]
}

result=`db1`

echo "result is :" $result

# 输出结果 注意 echo $[ $value * 2 ] 这个 echo 的结果并没有输出到STDOUT上
# Enter a number :3
# result is : 6


# 在函数中定义局部变量 需要在变量前增加 local 关键字


