for loop in 1 2 3 4 5  #这里是空格分割的 如果想更改 可以修改 $IFS 变量 比如修改为换行符 IFS=$'\n'
do
    echo "The value is: $loop"
done


for FILE in $HOME/.bash*
do
   echo $FILE
done

# 遍历目录 注意 for file in ‘/home/chenlihu/*‘ 下面的处理，得不到正确的结果
for file in /home/chenlihu/*
 do
   if [ -d "$file" ]; then  #目录中包含空格是合法的，所以要用双引号包起来。
     echo $file "is a directory"
   elif [ -f "$file" ]; then
     echo $file "is a file"
   else
     echo $file
   fi
 done

# c 风格的for循环
for ((i=0;i<10;i++))
 do
 	echo $i
 done
