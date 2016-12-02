# 从文件中获取

# 需要借助cat从文件中读取内容，每一行都会放入到变量line中
count=1
cat testfile | while read line
do
  echo "Line $count:$line"
  count=$[ $count + 1 ]
  #另外两种计算方式
  #count=` expr $ount + 1 `
  #count=$(( $count + 1 ))
done
echo "Finished processing the file"

# 从控制台获取信息
read -t 2 -p "Please enter your name" first last
echo "Checking data for $last.$first"
# -p 指定提示信息 -t 指定超时时间 

read -n1 -p "update Y/N" answer
echo "$answer"
# -n1 输入一个字符后自动退出

read -s -p "ender your password" password
echo "$password"
# -s 隐藏的方式输入

