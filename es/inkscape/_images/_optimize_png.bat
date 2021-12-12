@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (inkscape-logo-18*.png) do optipng -o 7 %%f
pause