# 标注文件描述符 0 标准输入 1 标准输出 2 标准错误
ls 1>file 2>log
# bash shell 提供的特殊符号 &> 指定把 STDOUT and STDERR 重定向到一个文件
ls &>file

# 重定向到STDERR 需要使用&2
# 假如该文件叫 test.sh
echo "this is a error messge" >&2
echo "this is a normal message"

# ./test.sh 2>log 错误消息被重定向到了log中
