@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (crocodile*.png) do optipng -o 6 %%f
pause