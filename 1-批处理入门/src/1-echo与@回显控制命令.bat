1 echo 和 @回显控制命令

@                    #关闭单行回显

echo off             #从下一行开始关闭回显

@echo off            #从本行开始关闭回显。一般批处理第一行都是这个

echo on              #从下一行开始打开回显

echo                 #显示当前是 echo off 状态还是 echo on 状态

echo.                #输出一个"回车换行"，一般就是指空白行

echo hello world     #输出hello world

"关闭回显"是指运行批处理文件时，不显示文件里的每条命令，只显示运行结果批处理开始和结束时，系统都会自动打开

回显