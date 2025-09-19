@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (informatica-av*.png) do optipng -o 6 %%f
pause