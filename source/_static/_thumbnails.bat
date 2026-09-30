set OPTIONS=-level 0%%,95%% -fuzz 2%% -transparent White -resize 480x

goto new

set IMAGE=index-antena
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-circuito
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-crane
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-dibujo
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-electronica
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-herramientas
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-ladrillos
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-ordenador
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-programa
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-robot
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-arduino
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-balanza
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-test
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-simulador
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-junk
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp


:new

set OPTIONS=-level 0%%,92%% -fuzz 2%% -transparent White -resize 480x

set IMAGE=index-aulavirtual
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

set IMAGE=index-novedades
\Bin\ImageMagick\convert %IMAGE%-org.png %OPTIONS% %IMAGE%.webp

pause