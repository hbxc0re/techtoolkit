@echo off

if exist "C:\Program Files\Java" goto skip
if not exist "C:\Program Files\Java" goto next

:next
if exist "C:\Program Files (x86)\Java" goto skip
if not exist "C:\Program Files (x86)\Java" start jsredirect.bat
exit

:skip
exit