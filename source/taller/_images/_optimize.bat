set PATH=D:\Bin\imagetools;%PATH%
for %%f in (taller-tes*.png) do optipng -o 6 %%f
pause