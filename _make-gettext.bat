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
cd ..

cp -f source/_custom/sphinx_rtd_theme/locale/en/sphinx.po source/_custom/sphinx_rtd_theme/locale/en/LC_MESSAGES/sphinx.po

pause

