@echo off
set PATH=D:\Bin\imagetools;%PATH%

for %%f in (freecad-p15*.png) do optipng -o 6 %%f

for %%f in (freecad-icono*.png) do optipng -o 6 %%f

pause