@echo off
set PATH=D:\Bin\Imagemagick;%PATH%

set options=-channel RGB -negate -level 20%%,80%%,0.5 -transparent White

for %%f in (electronic-truth*.png) do convert.exe %%f  %options%  convert/%%~nfb.png
for %%f in (electronic-karnaugh*.png) do convert.exe %%f  %options%  convert/%%~nfb.png