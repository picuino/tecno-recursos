@echo off
set PATH=venv\Scripts;%PATH%
call activate.bat

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

bash.exe %1 %2 %3 %4 %5