#字符串 可以用单引号 双引号 也可以不用引号

# 单引号

# str='this is a string'

# 单引号字符串的限制：
# 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单引号（对单引号使用转义符后也不行）。

# 双引号

# str="Hello, I know your are \"$your_name\"! \n"

# 双引号的优点：
# 双引号里可以有变量
# 双引号里可以出现转义字符


# 定义数组
array_name=(value0 value1 value2 value3)
# 获取元素
valuen=${array_name[2]}
# 获取数组
${array_name[*]}
${array_name[@]}

# 取得数组元素的个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
lengthn=${#array_name[n]}