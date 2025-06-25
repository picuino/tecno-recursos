@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (*.png) do optipng -fix -o 7 %%f
pause