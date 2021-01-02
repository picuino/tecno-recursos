@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (writer-button-*.png) do optipng.exe -o 6 %%f
@for %%f in (writer-p16*.png) do optipng.exe -o 6 %%f
pause
