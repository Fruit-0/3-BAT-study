34 choice (外部命令)选择命令让用户输入一个字符，从而选择运行不同的命令，返回码errorlevel为1234……win98里

是choice.comwin2000pro里没有，可以从win98里拷过来win2003里是choice.exechoice /N /C y /T 5 /D y>nul延时5秒

下面是个 choice 语句的例子
@echo off
rem 以下在win2000pro运行通过，从win98里拷的chioce.com文件
choice /c:abc aaa,bbb,ccc
if errorlevel 3 goto ccc
if %errorlevel%==2 goto bbb
if errorlevel==1 goto aaa
rem 必须先判断数值高的返回码rem 可以看到 errorlevel 值的判断有3种写法，有时某种写法不好用，可以用另外的写法
rem 直接运行

chioce相当于运行
choice /c:yn:aaa
echo aaa
goto end
:bbb
echo bbb
goto end
:ccc
echo ccc
goto end
:end