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
copy xp-services-defaults.bat "c:\Tech Toolkit"
attrib +S +H "c:\Tech Toolkit\xp-services-defaults.bat"
exit
====================================================================
:wvista
set version=vista
echo Detected Windows Vista
echo.
copy Vista-Business-defaults.bat "c:\Tech Toolkit"
copy Vista-Home-Basic-defaults.bat "c:\Tech Toolkit"
copy Vista-Home-Premium-defaults.bat "c:\Tech Toolkit"
copy Vista-Ultimate-defaults.bat "c:\Tech Toolkit"
attrib +S +H "c:\Tech Toolkit\Vista-Business-defaults.bat"
attrib +S +H "c:\Tech Toolkit\Vista-Home-Basic-defaults.bat"
attrib +S +H "c:\Tech Toolkit\Vista-Home-Premium-defaults.bat"
attrib +S +H "c:\Tech Toolkit\Vista-Ultimate-defaults.bat"
exit
=====================================================================

:w7
set version=w7
echo Detected Windows 7
copy windows-7-services-defaults.bat "c:\Tech Toolkit"
attrib +S +H "c:\Tech Toolkit\windows-7-services-defaults.bat"
exit
=======================================================================