@set PATH=D:\Bin\imagemagick;%PATH%
@set PATH=D:\Bin\imagetools;%PATH%

rem Válvulas or y and
rem @convert.exe %1 -crop 220x140+150+220 %~n1_cut.png

rem Montajes or y and
rem @convert.exe %1 -crop 760x560+0+40 %~n1_cut.png

rem Montajes doble or y doble and
rem @convert.exe %1 -crop 1080x580+0+40 %~n1_cut.png

@optipng -o 6 %~n1_cut.png
pause