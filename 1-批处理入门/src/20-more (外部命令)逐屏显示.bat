20 more (外部命令)逐屏显示
more c:\test.txt    #逐屏显示 c:\test.txt 的文件内容

G:\3-BAT脚本>copy /?
将一份或多份文件复制到另一个位置。

COPY [/D] [/V] [/N] [/Y | /-Y] [/Z] [/L] [/A | /B ] source [/A | /B]
     [+ source [/A | /B] [+ ...]] [destination [/A | /B]]

  source       指定要复制的文件。
  /A           表示一个 ASCII 文本文件。
  /B           表示一个二进位文件。
  /D           允许解密要创建的目标文件
  destination  为新文件指定目录和/或文件名。
  /V           验证新文件写入是否正确。
  /N           复制带有非 8dot3 名称的文件时，
               尽可能使用短文件名。
  /Y           不使用确认是否要覆盖现有目标文件
               的提示。
  /-Y          使用确认是否要覆盖现有目标文件
               的提示。
  /Z           用可重新启动模式复制已联网的文件。
/L           如果源是符号链接，请将链接复制
               到目标而不是源链接指向的实际文件。

命令行开关 /Y 可以在 COPYCMD 环境变量中预先设定。
这可能会被命令行上的 /-Y 替代。除非 COPY
命令是在一个批处理脚本中执行的，默认值应为
在覆盖时进行提示。

要附加文件，请为目标指定一个文件，为源指定
数个文件(用通配符或 file1+file2+file3 格式)。

G:\3-BAT脚本>find /?
在文件中搜索字符串。

FIND [/V] [/C] [/N] [/I] [/OFF[LINE]] "string" [[drive:][path]filename[ ...]]

  /V         显示所有未包含指定字符串的行。
  /C         仅显示包含字符串的行数。
  /N         显示行号。
  /I         搜索字符串时忽略大小写。
  /OFF[LINE] 不要跳过具有脱机属性集的文件。
  "string" 指定要搜索的文本字符串。
  [drive:][path]filename
             指定要搜索的文件。

如果没有指定路径，FIND 将搜索在提示符处键入
的文本或者由另一命令产生的文本。

G:\3-BAT脚本>echo /?
显示消息，或者启用或关闭命令回显。

  ECHO [ON | OFF]
  ECHO [message]

若要显示当前回显设置，请键入不带参数的 ECHO。

G:\3-BAT脚本>more /?
逐屏显示输出。

MORE [/E [/C] [/P] [/S] [/Tn] [+n]] < [drive:][path]filename
command-name | MORE [/E [/C] [/P] [/S] [/Tn] [+n]]
MORE /E [/C] [/P] [/S] [/Tn] [+n] [files]

    [drive:][path]filename  指定要逐屏显示的文件。

    command-name            指定要显示其输出的命令。

    /E      启用扩展功能
    /C      显示页面前先清除屏幕
    /P      扩展 FormFeed 字符
    /S      将多个空白行缩成一行
    /Tn     将制表符扩展为 n 个空格(默认值为 8)

            开关可以出现在 MORE 环境变量中。
    +n      从第 n 行开始显示第一个文件

    files   要显示的文件列表。使用空格分隔列表中的文件。
            如果已启用扩展功能，则在 -- More -- 提示处 接受下列命令:
    P n 显示下 n 行
    S n 跳过下 n 行
    F 显示下个文件
    Q 退出
    = 显示行号
    ? 显示帮助行
    <space> 显示下一页
    <ret> 显示下一行
