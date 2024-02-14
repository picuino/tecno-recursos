@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (scratch3-*.en.png) do optipng -o 6 %%f
pause