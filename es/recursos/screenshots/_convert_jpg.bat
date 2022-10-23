set PATH=D:\Bin\imagemagick;%PATH%
for %%f in (*.png) do convert.exe %%f -resize 50%% %%~nf.jpg
pause