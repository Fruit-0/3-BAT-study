@echo off
echo 你他娘的是谁？他娘的我不告诉你。>a.txt
echo 你他娘的到底是谁？我他娘的还就不告诉那个他娘的你。>>a.txt
for /f %%i in (a.txt) do (
set v=%%i
call echo %%v:他娘的=TMD%%
)
pause>nul&cls
for /f %%i in (a.txt) do (
set v=%%i
call echo %%v:他娘的=%%
)
