@ECHO OFF
rem ********************
rem    MAKE HTML FILES
rem ********************

set /p respuesta=Seguro que quiere borrar todo? (s/n)
if "%respuesta%" == "s" goto borrar
goto end

:borrar
call _gnu-bash.bat -c "make clean"
call _gnu-bash.bat -c "cp _custom/github-docs/* docs"
call _gnu-bash.bat -c "cp _custom/github-docs/.n* docs"
pause

:end

