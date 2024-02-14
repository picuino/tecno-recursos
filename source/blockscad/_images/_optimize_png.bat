@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (blockscad-*.png) do optipng -fix -o 6 %%f
pause