set PATH=D:\Bin\imagetools;%PATH%
for %%f in (electric-pcb*.png) do optipng -fix -o 6 %%f
pause