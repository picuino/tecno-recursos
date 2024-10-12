@echo off
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=\Bin\miktex\miktex\bin\x64;%PATH%
set PATH=%~dp0\venv\Scripts;%PATH%
call activate.bat

sphinx-build -b html -D language="es" source _build/html/es
echo.

sphinx-build -b html -D language="en" source _build/html/en
echo.

python source/_custom/sitemap.py "_build/html"


pause

