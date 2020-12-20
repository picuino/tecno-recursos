@ECHO OFF
rem ********************
rem    MAKE HTML FILES
rem ********************

call _gnu-bash.bat -c "make --no-print-directory -C es/"
echo.

call _gnu-bash.bat -c "make html"
pause

