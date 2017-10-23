if exist c:\Users goto vista7
if not exist c:\Users goto xp

:vista7
cd c:\TOOLS
if exist "C:\Program Files (x86)" goto vista7hs64
if not exist "C:\Program Files (x86)" goto xphs32
hstart.exe /ELEVATE MENU.bat
exit

:xp
if exist "C:\Program Files (x86)" vista7hs64
if not exist "C:\Program Files (x86)" goto xphs32
cd c:\TOOLS
start MENU.bat
exit


:vista7hs64
cd c:\TOOLS
hstart64.exe /ELEVATE MENU.bat
exit



:xphs32
cd c:\TOOLS
start MENU.bat
exit