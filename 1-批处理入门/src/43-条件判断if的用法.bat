　　if用于条件判断，适用于以下情形：

　　1、判断驱动器、文件或文件夹是否存在，用 if exist 语句；
　　2、判断某两个字符串是否相等，用 if "字符串1"=="字符串2" 语句；
　　3、判断某两个数值是否相等，用 if 数值1 equ 数值2 语句；
　　4、判断某个变量是否已经被赋值，用 if defined str 语句；

　　if语句的完整格式是这样的：if 条件表达式 (语句1) else (语句2)，它的含义是：如果条件表达式成立，那么，就执行语句1，否则，将执行语句2。

　　对于以上四种情形，可以分别使用如下代码：

　　1、if exist d:\test.txt (echo D盘下有test.txt存在) else (echo D盘下不存在test.txt)
　　2、if "abc"=="xyz" (echo 字符串abc等于字符串xyz) else (echo 字符串abc不等于字符串xyz)
　　3、if 1 equ 2 (echo 1等于2) else (echo 1不等于2)
　　4、if defined str (echo 变量str已经被赋值，其值为%str%) else (echo 变量str的值为空)

　　判断字符串是否相等的时候，if会区分大小写，比如，单纯的if语句会认为字符串abc和字符串Abc不相同，若不想区分大小写，则需要添加 /i 开关，使用 if /i "字符串1"=="字符串2" 的格式；另外，等于符号是连续的"=="而非单独的"="。

　　判断两个数值之间的大小关系，除了等于用equ之外，还有其他的关系符号，所有适用于if语句的关系符号见下表：


中文含义


关系符


英文解释

等于


equ


equal

大于


gtr


greater than

大于或等于


geq


greater than or equal

小于


lss


less than

小于或不等于


leq


less than or equal

不等于


neq


no equal

　　if语句还有一个精简格式：if 条件表达式 语句，它的含义是：如果条件表达式成立，将执行语句，否则，什么也不做。

多层 if 嵌套的语法举例：

    if exist a.txt (
        if exist 1.txt (
            echo 存在 a.txt 和 1.txt
        ) else (
            echo 存在 a.txt 但是不存在 1.txt
        )
    ) else if exist b.txt (
        echo 不存在 a.txt 但是存在 b.txt
    ) else (
        echo 不存在 a.txt 和 b.txt
    )

复制代码