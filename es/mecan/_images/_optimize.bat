@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (mecan-poleas*.png) do optipng -o 6 %%f
pause