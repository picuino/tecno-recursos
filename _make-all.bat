@ECHO OFF
rem ********************
rem    MAKE HTML FILES
rem ********************

call _gnu-bash.bat -c "make --no-print-directory -C source/"
echo.

cd source
call _gnu-bash.bat -c "make html"
cd ..
pause

