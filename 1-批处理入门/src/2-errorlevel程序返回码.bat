@echo off
echo hello,world
echo %errorlevel%

@echo 注释：echo %errorlevel%每个命令运行结束，可以用这个命令行格式查看返回码用于判断刚才的命令是否执行成功默认值为0，一般命令执行出错会设 errorlevel为1


pause

