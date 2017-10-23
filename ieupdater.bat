@echo off

ver | find "Version 5" > nul
if %ERRORLEVEL% == 0 goto wxp

ver | find "Version 6.0" > nul
if %ERRORLEVEL% == 0 goto wvista

ver | find "Version 6.1" > nul
if %ERRORLEVEL% == 0 goto w7
===================================================================
:wxp
set version=xp
echo Detected Windows XP
goto ie8.bat
====================================================================
:wvista
set version=vista
echo Detected Windows Vista
if exist "C:\Program Files (x86)" goto vistaie964
if not exist "C:\Program Files (x86)" goto vistaie932
:vistaie964
ie9vista64.bat
exit
:vistaie932
ie9vista32.bat
exit
=====================================================================

:w7
if exist "C:\Program Files (x86)" goto w7ie964
if not exist "C:\Program Files (x86)" goto w7ie932
set version=w7
echo Detected Windows 7
:w7ie964
ie9win764.bat
exit
:w7ie932
ie9win732.bat
exit
=======================================================================