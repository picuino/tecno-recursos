@echo off
set PATH=D:\Bin\cygwin64\bin;%PATH%
set PATH=D:\Bin\Inkscape;%PATH%
set PATH=D:\Bin\ImageMagick;%PATH%
set PATH=D:\Bin\7-Zip;%PATH%
set PATH=D:\Bin\imagetools;%PATH%
set PATH=D:\Bin\xpdf;%PATH%

for %%f in (*.svg) do call _topng.bat %%f
pause