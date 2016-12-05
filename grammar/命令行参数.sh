# $1 $2 分别读取命令行第一个、第二个参数 basename 取到程序名，不包含路径
# $# 获取参数个数
if [ -n "$0" ] && [ -n "$1" ]  &&  [ -n "$2" ];then
  echo "`basename $0` $1 $2"
else
  echo "you did not identify yourself."
fi
echo "params count: $#"

# 抓取所有的参数数据
# 下面的例子演示 $* $@ 的区别

echo "\$* is :  $*"
echo "\$@ is :  $@" 

count=1
for params in "$*"
do
  echo "\$* #$count = $params"
  count=$[ $count + 1 ]
done


count=1
for params in "$@"
do
  echo "\$@ #$count = $params"
  count=$[ $count + 1 ]
done
# 测试结果
# ./test.sh a b c
# $* is :  a b c
# $@ is :  a b c
# $* #1 = a b c
# $@ #1 = a
# $@ #2 = b
# $@ #3 = c

# shift 移动参数
count=1
while [ -n "$1" ]
do
  echo "Parameter $count = $1 "
  count=$[ $count + 1 ]
  shift
done

# 使用getopt对选项和参数进行格式化
getopt ab:cd -a -b test1 -cd test2 test3
# -- 分割选项和参数
-a -b test1 -c -d -- test2 test3

# getopt 使用例子 set -- 用来替换已有的命令行选项和参数

set -- `getopt -q ab:c "$@"`
while [ -n $1 ]
do
  case "$1" in
   -a) echo "Found the -a option";;
   -b) param="$2"
       echo "Found the -b option,with parameter value $param"
       shift;;
   -c) echo "Found the -c option";;
   --) shift;
       break;;
   *) echo "$1 is not an option";;
  esac
  shift
done

count=1
for param in "$@"
do
  echo "Parameter #$count: $param"
  count=$[ $count + 1 ]
done
# 但是上面这个例子处理不了 参数值中包含空格的情况
# ./test.sh -a -b abc -c "a b" c
# Found the -a option
# Found the -b option,with parameter value 'abc'
# Found the -c option
# Parameter #1: 'a
# Parameter #2: b'
# Parameter #3: 'c'


# 使用更高级的 getopts
while getopts :ab:cd opt  # 每次循环值被放入到 $opt 中 ，可自定义
do
  case "$opt" in
   a) echo "Found the -a option";;
   b) echo "Found the -b option,with parameter value $OPTARG";;  #保存选项值
   c) echo "Found the -c option";;
   d) echo "Found the -d option";;
   *) echo "$1 is not an option";;
  esac
done
shift $[ $OPTIND -1 ]   # $OPTIND 选项个数

count=1
for param in "$@"
do
  echo "Parameter #$count: $param"
  count=$[ $count + 1 ]
do


