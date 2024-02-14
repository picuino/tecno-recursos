@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (*.png) do optipng -o 7 %%f
pause