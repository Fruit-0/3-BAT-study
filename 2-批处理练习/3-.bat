@echo off
find "18" .\a.txt >.\b.txt
echo %errorlevel% >>.\b.txt




::/V         显示所有未包含指定字符串的行
::/C         仅显示包含字符串的行数
::/N         显示行号
::/I         搜索字符串时忽略大小写
::字符串的行如果找不到，将设 errorlevel返回码为1,否则为0
find   [搜索的文件路径]

