@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (neumatic-hop*.png) do optipng -o 6 %%f
pause