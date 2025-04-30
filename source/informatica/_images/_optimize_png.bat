@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (writer*.png) do optipng -o 6 %%f
pause