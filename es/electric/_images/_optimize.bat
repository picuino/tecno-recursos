set PATH=D:\Bin\imagetools;%PATH%
for %%f in (*.png) do optipng -o 6 %%f
pause