set PATH=D:\Bin\imagetools;%PATH%
for %%f in (taller-tabl*.png) do optipng -o 6 %%f
pause