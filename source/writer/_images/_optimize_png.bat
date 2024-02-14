@echo off
set PATH=D:\Bin\imagetools;%PATH%

for %%f in (writer-p22*.png) do optipng.exe -o 6 %%f

rem for %%f in (writer-button-*.png) do optipng.exe -o 6 %%f
rem mkdir optimize
rem for %%f in (*.jpg) do jpegtran.exe -copy none -optimize -progressive %%f optimize\%%f

pause
