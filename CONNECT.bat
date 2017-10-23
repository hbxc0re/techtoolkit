@echo off
cd "C:\Tech Toolkit"
echo Please Make a Choice By typing the corresponding number...
echo.
echo.
echo   1. Take me to code page
echo   2. Reboot Computer
echo   3. Ping Google (Connectivity Test)
echo   4. Ping Yahoo (Connectivity Test)
:top
echo.
set /p option= Enter Choice.....
if %option%==1  goto logmein
if %option%==2  goto reboot
if %option%==3  goto google
if %option%==4  goto yahoo


:yahoo
ping www.yahoo.com
goto top

:google
ping www.google.com
goto top

:reboot
shutdown /f -r -t 5
goto top

:logmein
start iexplore dc12.us
exit