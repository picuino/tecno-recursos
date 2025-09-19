@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (informatica-*.png) do optipng -o 6 %%f
pause