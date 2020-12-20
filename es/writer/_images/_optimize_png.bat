@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (writer-*.png) do optipng.exe -o 6 %%f
pause
