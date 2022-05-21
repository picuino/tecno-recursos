@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (neumatic-test*.png) do optipng -o 6 %%f
pause