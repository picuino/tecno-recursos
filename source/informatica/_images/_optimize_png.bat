@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (calc*.png) do optipng -o 6 %%f
pause