sc create aaa displayname= bbb start= auto binpath= "C:\WINDOWS\System32\alg.exe"创建服务，服务名称aaa，显示名称bbb，启动类型:自动可执行文件的路径"C:\WINDOWS\System32\alg.exe"
sc description aaa "ccc"更改aaa的描述为ccc
sc config aaa start= disabled binpath= "C:\WINDOWS\System32\svchost.exe -k netsvcs"更改aaa的启动类型:已禁用更改aaa的可执行文件的路径"C:\WINDOWS\System32\svchost.exe -k netsvcs"
sc config aaa start= demand displayname= ddd更改aaa的启动类型:手动更改aaa的显示名称ddd
sc start aaa启动aaa服务
sc stop aaa停止aaa服务
sc delete aaa删除aaa服务