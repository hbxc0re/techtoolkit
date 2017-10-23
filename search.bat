@echo off
mode con: cols=105
set pth=c:\
cd %pth%
title Searching in %pth% and all sub directories .
:begin
set LF=
cls
echo To search a file type it's full name with 
echo extension, or simply type *mp3 for example
echo to search all files of that extension.
echo.
echo.
set /p LF=Search For...
if x%LF%==x goto eof
dir /s /w /A H S R A I %LF%
echo.
echo Done.
pause>nul
goto begin
:eof
cls
echo Thank You .
pause>nul 