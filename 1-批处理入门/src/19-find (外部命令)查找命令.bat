19 find (外部命令)查找命令
find "abc" c:\test.txt在 c:\test.txt 文件里查找含 abc 字符串的行如果找不到，将设 errorlevel 返回码为1
find /i "abc" c:\test.txt查找含 abc 的行，忽略大小写
find /c "abc" c:\test.txt显示含 abc 的行的行数


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