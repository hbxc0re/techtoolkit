@echo off
color 0A
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
regedit /s folder-reconnect-xp.reg
exit
====================================================================
:wvista
set version=vista
echo Detected Windows Vista
regedit /s Reconnect.reg
regedit /s re-launch-tool.reg
exit
=====================================================================
:w7
set version=w7
echo Detected Windows 7
regedit /s Reconnect.reg
regedit /s re-launch-tool.reg
exit
=======================================================================
