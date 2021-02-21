25 |管道命令
前一个命令的执行结果输出到后一个命令
dir *.* /s/a | find /c ".exe"管道命令表示先执行 dir 命令，对其输出的结果执行后面的 find 命令该命令行结果：


输出当前文件夹及所有子文件夹里的.exe文件的个数
type c:\test.txt|more这个和 more c:\test.txt 的效果是一样的