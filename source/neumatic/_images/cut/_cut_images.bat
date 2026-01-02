@set PATH=D:\Bin\imagemagick;%PATH%

@convert.exe %1 -crop 560x390+190+85 %~n1_cut.png
pause