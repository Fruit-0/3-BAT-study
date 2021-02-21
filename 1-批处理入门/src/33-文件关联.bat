35 assoc 和 ftype文件关联assoc 设置'文件扩展名'关联，关联到'文件类型'ftype 设置'文件类型'关联，关联到'执行程序和参数'当你双击一个.txt文件时，windows并不是根据.txt直接判断用 notepad.exe 打开而是先判断.txt属于 txtfile '文件类型'再调用 txtfile 关联的命令行 txtfile=%SystemRoot%\system32\NOTEPAD.EXE %1可以在"文件夹选项"→"文件类型"里修改这2种关联
assoc           #显示所有'文件扩展名'关联
assoc .txt      #显示.txt代表的'文件类型'，结果显示 .txt=txtfile
assoc .doc      #显示.doc代表的'文件类型'，结果显示 .doc=Word.Document.8
assoc .exe      #显示.exe代表的'文件类型'，结果显示 .exe=exefile
ftype           #显示所有'文件类型'关联
ftype exefile   #显示exefile类型关联的命令行，结果显示 exefile="%1" %* assoc .txt=Word.Document.8设置.txt为word类型的文档，可以看到.txt文件的图标都变了
assoc .txt=txtfile恢复.txt的正确关联 ftype exefile="%1" %*恢复 exefile 的正确关联

如果该关联已经被破坏，可以运行 command.com ，再输入这条命令