# Unix 命令默认从标准输入设备(stdin)获取输入，将结果输出到标准输出设备(stdout)显示。一般情况下，标准输入设备就是键盘，标准输出设备就是终端，即显示器。
# command > file 重定向到文件
# command >> file 重定向到文件 追加方式


# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：
# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。

# 如果希望 stderr 重定向到 file，可以这样写：
# $command 2 > file
# 如果希望 stderr 追加到 file 文件末尾，可以这样写：
# $command 2 >> file
# 2 表示标准错误文件(stderr)。

# 如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写：
# $command > file 2>&1
# 或
# $command >> file 2>&1


# /dev/null 文件

# 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：
# $ command > /dev/null
# /dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到”禁止输出“的效果。

# 如果希望屏蔽 stdout 和 stderr，可以这样写：
# 纯文本复制
# $ command > /dev/null 2>&1