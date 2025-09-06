@ECHO OFF
rem ********************
rem    MAKE GETTEXT
rem ********************

set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=%~dp0\venv\Scripts;%PATH%
call activate.bat

sphinx-build -b gettext source _build/gettext

cd source
sphinx-intl update -p ../_build/gettext -l en
sphinx-intl update -p ../_build/gettext -l ca
cd ..

cp -f locale/en/sphinx.po  locale/en/LC_MESSAGES/sphinx.po
cp -f locale/ca/sphinx.po  locale/ca/LC_MESSAGES/sphinx.po

pause

