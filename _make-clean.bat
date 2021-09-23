@ECHO OFF
rem ********************
rem    MAKE HTML FILES
rem ********************

set /p respuesta=Seguro que quiere borrar todo? (s/N)
if "%respuesta%" == "s" goto borrar
goto end

:borrar
call _gnu-bash.bat -c "make clean"

:end
pause

