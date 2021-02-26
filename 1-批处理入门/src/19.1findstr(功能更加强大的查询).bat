findstr

[/b] [/e][/l][/r][/s][/i][/x][/v][/n][/m][/o][/p][/offline][/g:file][/f:file][/c:string][/d:dirlist][/a:ColorAttribute][strings][[Drive:][Path] FileName [...]]

三、参数解释

/b          如果位于行的开头则匹配模式，b是begin的首字母。

/e         如果位于行的末尾则匹配模式，e是end的首字母。

/l         使用文字搜索字符串，l是language的首字母。

/r         使用搜索串作为常规表达式。Findstr 将所有元字符解释为常规表达式，除非使用了 /l。r是regular的首字母。

/s         在当前目录和所有子目录中搜索匹配的文件。

/i         指定搜索不区分大小写。

/x         打印完全匹配的行。

/v         只打印不包含匹配的行。

/n         在每个匹配的行之前打印行号。

/m         如果文件包含匹配项，仅打印该文件名。

/o         在每次匹配行之前打印查找偏移量。

/p         跳过包含非可打印字符的文件。

/offline         利用脱机属性设置处理文件。

/f:file         从指定文件中读取文件列表。

/c:string         使用指定的文本作为文字搜索字符串。

/g:file         从指定文件得到搜索字符串。

/d:dirlist         搜索以逗号分隔的目录列表。

/a:ColorAttribute         使用两个十六进制数指定颜色属性。

strings         指定要在 FileName中搜索的文本。

[Drive:][Path] FileName [...]         [drive:]、[path]是可选的，如果省略，默认是查找当前目录，至少指定一个文件，可以同时指定多个，用空格分隔，另外文件名可以使用通配符，例如所有文本文件，就可以写成 *.txt 即可。

/?         在命令提示符显示帮助。

四、例子

1、在当前目录及所有子目录下的所有文件中查找

在当前目录及所有子目录下的所有文件中查找"backup"这个字符串，*.*表示所有类型的文件。

findstr /s /i "backup" *.*

2、查找带有空格的字符串

在当前目录及所有子目录下查找"backup jobs"

findstr /s /i /c:"backup jobs" *.*

3、指定路径查找字符串"cmd"

在C:\tmp\查找所有txt文件的字符串"cmd"

findstr /s /i /c:"cmd" C:\tmp\*.txt
版权声明：本文为CSDN博主「顺其自然~」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/fuhanghang/article/details/83627792