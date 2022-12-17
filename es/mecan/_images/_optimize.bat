@set PATH=D:\Bin\imagetools;%PATH%

@for %%f in (mecan-calibre*.png) do optipng -fix -o 6 %%f
pause