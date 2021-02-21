32 start批处理中调用外部程序的命令，否则等外部程序完成后才继续执行剩下的指令
start explorer d:\调用图形界面打开D盘
@echo offcd /d %~dp0regedit /s 劲舞团.regstart patcher.exe
不加 start 命令的话，"劲舞团"运行时，后面会有个黑乎乎的cmd窗口