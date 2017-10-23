@echo off
echo MalwareBytes is installing and will update in about 15 seconds then scan.
echo When the scan begins please close this black window.
cd /d %~dp0
mbam.exe /silent
ping 127.0.0.1 -n 2 -w 15000 > nul
ping 127.0.0.1 -n %1% -w 15000> nul
"%programfiles%\malwarebytes' anti-malware\mbam.exe" /updateshowdialog
"%programfiles%\malwarebytes' anti-malware\mbam.exe" /quickscan
timeout /t 5
exit