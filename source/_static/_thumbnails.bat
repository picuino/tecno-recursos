set OPTIONS=-transparent White -resize 480x

set IMAGE=index-crane
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.jpg
\Bin\ImageTools\optipng -quiet -o 6 %IMAGE%.png

set IMAGE=index-ladrillos
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.jpg
\Bin\ImageTools\optipng -quiet -o 6 %IMAGE%.png

set IMAGE=index-dibujo
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.jpg
\Bin\ImageTools\optipng -quiet -o 6 %IMAGE%.png

pause