@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (scratch3*.png) do optipng -o 6 %%f
pause