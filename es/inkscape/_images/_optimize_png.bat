@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (inkscape-logo-04*.png) do optipng -o 6 %%f
pause