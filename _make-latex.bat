@echo off
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=\Bin\miktex\miktex\bin\x64;%PATH%
set PATH=%~dp0\venv\Scripts;%PATH%
call activate.bat

sphinx-build -b latex -D language="es" source _build/latex
echo.

pause

