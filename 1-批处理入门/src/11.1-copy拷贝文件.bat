11 copy拷贝文件
::必须注意的是，copy只能复制文件，对于文件夹的复制，则需要另请高明，动用xcopy来复制
:: 复制 c:\test.txt 文件到 d:\
::如果要复制的路径带有空格、&等特殊符号的时候，请使用引号把这些特殊字符括起来，比如： copy "d:\test abc\test.txt" "d:\t&est"
copy c:\test.txt d:\

::复制 c:\test.txt 文件到 d:\ ，并重命名为 test.bak
copy c:\test.txt d:\test.bak

::复制 c:\ 所有文件到当前目录，不包括隐藏文件和系统文件不指定目标路径，则默认目标路径为当前目录
copy c:\*.*

::从屏幕上等待输入，按 Ctrl+Z 结束输入，输入内容存为test.txt文件con代表屏幕，prn代表打印机 ，nul代表空设备
:: copy con abc.txt 这条命令的意思就是从键盘中把输入的文字复制到文件abc.txt中去，所以输入命令后，在输入字符，结束时按下 ctrl+z.你输入的文字就会保存到abc.txt这个文件里了。 而如果你输入的是 copy abc.txt con 计算机则会把abc.txt中的文字复制到屏幕上，也就是显示出来。
copy con test.txt

::合并 1.txt 和 2.txt 的内容，保存为 3.txt 文件如果不指定 3.txt ，则保存到 1.txt
copy 1.txt + 2.txt 3.txt

复制文件到自己，实际上是修改了文件日期
copy test.txt +



::-----
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
