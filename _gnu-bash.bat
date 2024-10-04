@echo off
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=%~dp0\venv\Scripts;%PATH%
call activate.bat

set PATH=\Bin\phantomjs\bin;%PATH%
set PATH=\Bin\ghostscript\bin;%PATH%
set PATH=\Bin\Java\bin;%PATH%
set PATH=\Bin\Inkscape;%PATH%
set PATH=\Bin\ImageMagick;%PATH%
set PATH=\Bin\7-Zip;%PATH%
set PATH=\Bin\imagetools;%PATH%
set PATH=\Bin\xpdf;%PATH%
set PATH=\Bin\miktex\miktex\bin\x64;%PATH%

bash.exe %1 %2 %3 %4 %5