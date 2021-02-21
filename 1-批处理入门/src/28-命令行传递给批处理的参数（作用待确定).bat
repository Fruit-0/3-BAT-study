28.
%0 %1 %2 %3 %4 %5 %6 %7 %8 %9 %*命令行传递给批处理的参数
%0 批处理文件本身%1 第一个参数%9 第九个参数%* 从第一个参数开始的所有参数在C盘根目录新建test.bat，内容如下：

    @echo off
    echo %0
    echo %1
    echo %2
    echo %*

复制代码

运行cmd，输入 c:\test.bat "/a" /b /c /d可以看出每个参数的含意
修改test.bat内容如下

    @echo off
    echo %1
    echo %~1
    echo %0
    echo %~f0
    echo %~d0
    echo %~p0
    echo %~n0
    echo %~x0
    echo %~s0
    echo %~a0
    echo %~t0
    echo %~z0

复制代码

再运行cmd，输入 c:\test.bat "/a" /b /c /d可以参照 call/? 或 for/? 看出每个参数的含意注意这里可以对文件进行日期比较和大小比较

    echo load "%%1" "%%2">c:\test.txt

复制代码

生成的文件内容为 load "%1" "%2"
批处理文件里，用这个格式把命令行参数输出到文件