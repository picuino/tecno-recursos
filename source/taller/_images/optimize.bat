set PATH=D:\Bin\imagetools;%PATH%
for %%f in (taller-tangram*.png) do optipng -o 6 %%f
pause