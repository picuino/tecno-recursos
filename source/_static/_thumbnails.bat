set OPTIONS=-level 0%%,95%% -fuzz 2%% -transparent White -resize 480x

set IMAGE=index-crane
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-ladrillos
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-dibujo
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

pause