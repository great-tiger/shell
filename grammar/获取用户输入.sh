# 从文件中获取

# 需要借助cat从文件中读取内容，每一行都会放入到变量line中
count=1
cat testfile | while read line
do
  echo "Line $count:$line"
  count=$[ $count + 1 ]
done
echo "Finished processing the file"