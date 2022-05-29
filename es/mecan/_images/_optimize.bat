@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (mecan-tornillo*.png) do optipng -o 6 %%f
pause