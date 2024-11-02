@echo off
set PATH=D:\Bin\Imagemagick;%PATH%
mkdir nofondo

for %%f in (digital-*.png) do convert.exe %%f -posterize 16 -transparent White nofondo/%%f