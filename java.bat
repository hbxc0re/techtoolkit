@echo off
if exist "C:\Program Files (x86)" goto 64
if not exist "C:\Program Files (x86)" goto 32

:64
if not exist c:\Users goto xp
wget http://files2.majorgeeks.com/1176c69d6d64fbf4265faba1a513e46c8ba318a5/browsers/jre-9.0.1_windows-x64_bin.exe
hstart /SILENT /ELEVATE jre-9.0.1_windows-x64_bin.exe
exit

:32
if not exist c:\Users goto xp
wget http://files1.majorgeeks.com/c497afff83a108a8a955970c77a8868396a3325e/browsers/jre-8u152-windows-i586.exe
hstart /SILENT /ELEVATE jre-8u152-windows-i586.exe
exit

:xp
wget http://files1.majorgeeks.com/c497afff83a108a8a955970c77a8868396a3325e/browsers/jre-8u152-windows-i586.exe
start jre-8u152-windows-i586.exe
exit