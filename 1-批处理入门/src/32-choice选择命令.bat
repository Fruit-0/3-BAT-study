34 choice (外部命令)选择命令让用户输入一个字符，从而选择运行不同的命令，返回码errorlevel为1234……win98里

是choice.comwin2000pro里没有，可以从win98里拷过来win2003里是choice.exechoice /N /C y /T 5 /D y>nul延时5秒

下面是个 choice 语句的例子
@echo off
:begin
choice /c:1234 /m:"please select"
if %errorlevel%==4 goto end
if %errorlevel%==3 goto three
if %errorlevel%==2 goto two
if %errorlevel%==1 goto one
:one
echo 111
pause>nul
goto begin
:two
echo 222
pause>nul
goto begin
:three
echo 333
pause>nul
goto begin
:end
echo I want to quit
pause>nul


-----------
G:\3-BAT脚本>choice /?

CHOICE [/C choices] [/N] [/CS] [/T timeout /D choice] [/M text]

描述:
    该工具允许用户从选择列表选择一个项目并返回所选项目的索引。

参数列表:
   /C    choices       指定要创建的选项列表。默认列表是 "YN"。

   /N                  在提示符中隐藏选项列表。提示前面的消息得到显示，
                       选项依旧处于启用状态。

   /CS                 允许选择分大小写的选项。在默认情况下，这个工具
                       是不分大小写的。

   /T    timeout       做出默认选择之前，暂停的秒数。可接受的值是从 0
                       到 9999。如果指定了 0，就不会有暂停，默认选项
                       会得到选择。

   /D    choice        在 nnnn 秒之后指定默认选项。字符必须在用 /C 选
                       项指定的一组选择中; 同时，必须用 /T 指定 nnnn。

   /M    text          指定提示之前要显示的消息。如果没有指定，工具只
                       显示提示。

   /?                  显示此帮助消息。

   注意:
   ERRORLEVEL 环境变量被设置为从选择集选择的键索引。列出的第一个选
   择返回 1，第二个选择返回 2，等等。如果用户按的键不是有效的选择，
   该工具会发出警告响声。如果该工具检测到错误状态，它会返回 255 的
   ERRORLEVEL 值。如果用户按 Ctrl+Break 或 Ctrl+C 键，该工具会返回 0
   的 ERRORLEVEL 值。在一个批程序中使用 ERRORLEVEL 参数时，将参数降
   序排列。

示例:
   CHOICE /?
   CHOICE /C YNC /M "确认请按 Y，否请按 N，或者取消请按 C。"
   CHOICE /T 10 /C ync /CS /D y
   CHOICE /C ab /M "选项 1 请选择 a，选项 2 请选择 b。"
   CHOICE /C ab /N /M "选项 1 请选择 a，选项 2 请选择 b。"

G:\3-BAT脚本>
