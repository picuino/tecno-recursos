@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (scratch3-p15*.png) do optipng -o 6 %%f
pause