# 在当前目录创建临时文件 XXXXXX 是固定写法，命令会替换成随机字符
mktemp aaa.XXXXXX 
# 在临时目录中创建临时文件
mktemp -t aaa.XXXXXX
# 创建临时目录
mktemp -d bbb.XXXXXX
# 在命令中使用
logpath=`mktemp aaa.XXXXXX`
echo "logpath is : $logpath"