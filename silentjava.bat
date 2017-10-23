if exist "C:\Program Files (x86)" goto 64
if not exist "C:\Program Files (x86)" goto 32


:64
wget http://techtool.advancedtechsupport.com/java64.exe
hstart /SILENT /ELEVATE java32.exe /s
exit

:32
wget http://techtool.advancedtechsupport.com/java32.exe
hstart /SILENT /ELEVATE java64.exe /s
exit