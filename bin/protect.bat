@echo off
set AppName=main.exe
set AppPath=.\
title ���̼��
cls
echo.
echo ���̼�ؿ�ʼ...
echo.
:startjc
qprocess %AppName% > nul
if %errorlevel% equ 0 (
rem echo ^>%date:~0,10% %time:~0,8% running
)else (
start %AppPath%%AppName% 2>nul && echo ^>%date:~0,10% %time:~0,8% start,success!
)
for /l %%i in (1,1,1) do ping -n 2 -w 100 127.0.0.1>nul
goto startjc
echo on