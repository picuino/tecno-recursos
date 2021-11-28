@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (inkscape-logo-11*.png) do optipng -o 7 %%f
pause