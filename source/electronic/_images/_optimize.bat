@echo off
set PATH=D:\Bin\imagetools;%PATH%
for %%f in (electronic-binary*.png) do optipng -fix -o 6 %%f
pause