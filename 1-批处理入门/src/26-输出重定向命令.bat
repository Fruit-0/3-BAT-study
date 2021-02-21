26 > 和 >>输出重定向命令
> 清除文件中原有的内容后再写入>> 追加内容到文件末尾，而不会清除原有的内容主要将本来显示在屏幕上的内容输出

到指定文件中指定文件如果不存在，则自动生成该文件
echo hello world>c:\test.txt生成c:\test.txt文件，内容为hello world这个格式在批处理文件里用得很多，可以生成

.reg .bat .vbs 等临时文件
type c:\test.txt >prn屏幕上不显示文件内容，转向输出到打印机
echo hello world>con在屏幕上显示hello world，实际上所有输出都是默认 >con 的
copy c:\test.txt f: >nul拷贝文件，并且不显示"文件复制成功"的提示信息，但如果f盘不存在，还是会显示出错信息
copy c:\test.txt f: >nul 2>nul不显示"文件复制成功"的提示信息，并且f盘不存在的话，也不显示错误提示信息
echo ^^W ^> ^W>c:\test.txt生成的文件内容为 ^W > W^ 和 > 是控制命令，要把它们输出到文件，必须在前面加个 ^
符号