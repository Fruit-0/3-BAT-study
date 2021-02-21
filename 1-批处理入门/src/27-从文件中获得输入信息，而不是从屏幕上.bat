27 <从文件中获得输入信息，而不是从屏幕上
一般用于 date time label 等需要等待输入的命令
@echo offecho 2005-05-01>temp.txtdate <temp.txtdel temp.txt这样就可以不等待输入直接修改当前日期