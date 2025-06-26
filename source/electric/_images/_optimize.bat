set PATH=D:\Bin\imagetools;%PATH%
for %%f in (electric-simulador*.png) do optipng -fix -o 6 %%f
pause