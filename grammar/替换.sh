#!/bin/bash

# 命令替换 
# 命令替换是指Shell可以先执行命令，将输出结果暂时保存，在适当的地方输出

DATE=`date`
echo $DATE

# 变量替换
# 变量替换可以根据变量的状态（是否为空、是否定义等）来改变它的值

# 可以使用的变量替换形式：
# 形式	说明
# ${var}	变量本来的值
# ${var:-word}	如果变量 var 为空或已被删除(unset)，那么返回 word，但不改变 var 的值。
# ${var:=word}	如果变量 var 为空或已被删除(unset)，那么返回 word，并将 var 的值设置为 word。

# ${var:?message}	如果变量 var 为空或已被删除(unset)，那么将消息 message 送到标准错误输出，可以用来检测变量 var 是否可以被正常赋值。
# 若此替换出现在Shell脚本中，那么脚本将停止运行。

# ${var:+word}	如果变量 var 被定义，那么返回 word，但不改变 var 的值。




# 另外双引号中使用变量也是一种替换

echo -e "Value of a is $a \n"

# 注意不加-e \n会原样输出  我在mac上的测试，加不加-e 输出结果是一样的。 linux 中如上所述。