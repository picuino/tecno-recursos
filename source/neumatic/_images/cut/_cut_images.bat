@set PATH=D:\Bin\imagemagick;%PATH%

@convert.exe %1 -crop 640x400+20+50 %~n1_cut.png
@convert.exe %2 -crop 640x400+20+50 %~n2_cut.png
@convert.exe %3 -crop 640x400+20+50 %~n3_cut.png
pause