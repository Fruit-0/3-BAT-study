31 set设置变量
引用变量可在变量名前后加 % ，即 %变量名%
set                    #显示目前所有可用的变量，包括系统变量和自定义的变量
echo %SystemDrive%     #显示系统盘盘符。系统变量可以直接引用
set p                  #显示所有以p开头的变量，要是一个也没有就设errorlevel=1
set p=aa1bb1aa2bb2     #设置变量p，并赋值为 = 后面的字符串，即aa1bb1aa2bb2
echo %p%               #显示变量p代表的字符串，即aa1bb1aa2bb2
echo %p:~6%            #显示变量p中第6个字符以后的所有字符，即aa2bb2
echo %p:~6,3%          #显示第6个字符以后的3个字符，即aa2
echo %p:~0,3%          #显示前3个字符，即aa1
echo %p:~-2%           #显示最后面的2个字符，即b2
echo %p:~0,-2%         #显示除了最后2个字符以外的其它字符，即aa1bb1aa2b
echo %p:aa=c%          #用c替换变量p中所有的aa，即显示c1bb1c2bb2
echo %p:aa=%           #将变量p中的所有aa字符串置换为空，即显示1bb12bb2
echo %p:*bb=c%         #第一个bb及其之前的所有字符被替换为c，即显示c1aa2bb2
set p=%p:*bb=c%        #设置变量p，赋值为 %p:*bb=c% ，即c1aa2bb2
set /a p=39            #设置p为数值型变量，值为39
set /a p=39/10         #支持运算符，有小数时用去尾法，39/10=3.9，去尾得3，p=3set /a p=p/10          #用 /a

参数时，在 = 后面的变量可以不加%直接引用set /a p="1&0"         #"与"运算，要加引号。其它支持的运算符参见

set/?
set p=                 #取消p变量
set /p p=请输入屏幕上显示"请输入"，并会将输入的字符串赋值给变量p注意这条可以用来取代 choice 命令
注意变量在 if 和 for 的复合语句里是一次性全部替换的，如
@echo off
set p=aaa
if %p%==aaa (
  echo %p%
  set p=bbb
  echo %p%    )
结果将显示aaaaaa因为在读取 if 语句时已经将所有 %p% 替换为aaa这里的"替换"，在 /? 帮助里就是指"扩充"、"环境

变量扩充"可以启用"延缓环境变量扩充"，用 ! 来引用变量，即 !变量名!
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set p=aaaif %p%==aaa (
  echo %p%
set p=bbb
echo !p!    )
ENDLOCAL
结果将显示aaabbb
还有几个动态变量，运行 set 看不到
%CD%                  #代表当前目录的字符串
%DATE%                #当前日期
%TIME%                #当前时间
%RANDOM%              #随机整数，介于0~32767
%ERRORLEVEL%          #当前ERRORLEVEL 值
%CMDEXTVERSION%       #当前命令处理器扩展名版本号
%CMDCMDLINE%          #调用命令处理器的原始命令行可以用echo命令查看每个变量值，如 echo %time%注意 %time%

精确到毫秒，在批处理需要延时处理时可以用到