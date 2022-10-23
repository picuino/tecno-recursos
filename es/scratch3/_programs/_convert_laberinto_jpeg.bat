@set PATH=D:\Bin\Imagemagick;%PATH%

@for %%f in (laberinto*.jpeg) do convert.exe %%f -crop 403x403+13+13 -fill none -stroke black -strokewidth 3 -draw "rectangle 0,0 401,401" -resize 200%% -compose copy -gravity east -extent 1070x806 -threshold 80%% -alpha off %%~nf.png

pause