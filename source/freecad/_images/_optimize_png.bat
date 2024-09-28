@echo off
set PATH=D:\Bin\imagetools;%PATH%

for %%f in (freecad-p04*.png) do optipng -o 6 %%f

pause