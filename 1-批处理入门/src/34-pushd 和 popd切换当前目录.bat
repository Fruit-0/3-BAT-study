36 pushd 和 popd切换当前目录
@echo off
c: & cd\ & md mp3       #在 C:\ 建立 mp3 文件夹
md d:\mp4               #在 D:\ 建立 mp4 文件夹
cd /d d:\mp4            #更改当前目录为 d:\mp4
pushd c:\mp3            #保存当前目录，并切换当前目录为 c:\mp3
popd                    #恢复当前目录为刚才保存的 d:\mp4一般用处不大，在当前目录名不确定时，会有点帮助