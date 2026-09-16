@set PATH=D:\Bin\imagetools;%PATH%
@for %%f in (*.png) do D:\Bin\ImageMagick\convert.exe %%f -fill white -draw "rectangle 160,1900 530,1980" new\%%f
pause