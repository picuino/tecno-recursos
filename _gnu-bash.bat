@echo off
set PATH=C:\Python37;C:\Python37\Scripts;%PATH%
rem set PATH=\Bin\mingw32\bin;%PATH%
set PATH=D:\Bin\cygwin64\bin;%PATH%
set PATH=D:\Bin\phantomjs\bin;%PATH%
set PATH=D:\Bin\ghostscript\bin;%PATH%
set PATH=D:\Bin\Java\bin;%PATH%
set PATH=D:\Bin\Inkscape;%PATH%
set PATH=D:\Bin\ImageMagick;%PATH%
set PATH=D:\Bin\7-Zip;%PATH%
set PATH=D:\Bin\imagetools;%PATH%
set PATH=D:\Bin\xpdf;%PATH%

call /Picuino/Tecno-recursos/venv/scripts/activate.bat

bash.exe %1 %2 %3 %4 %5