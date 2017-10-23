@echo off
echo.
echo                           ****CAUTION****
echo.
echo            Make sure that you have run the programs built in
echo            uninstaller. Proceeding without first uninstalling
echo            may cause a blue screen, and or loss of internet 
echo            connectivity. You assume all risk by selecting continue.
echo.
echo            1. Continue, I have already uninstalled.
echo            2. Cancel I need to uninstall.
echo.
set /p option=Enter Choice....
if %option%==1 goto continue
if %option%==2 goto exitapp

:exitapp
exit

:continue
cd /d "%ProgramFiles%\Microsoft Security Client"

setup.exe /x

TASKKILL /f /im MsMpEng.exe

TASKKILL /f /im msseces.exe

net stop MsMpSvc

sc delete MsMpSvc

REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\MsMpSvc" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft Antimalware" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft Security Client" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Microsoft Antimalware" /f

REG DELETE "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Current Version\Run\MSC" /f

REG DELETE "HKEY_CLASSES_ROOT\Installer\Products\4C677A77F01DD614880F352F9DCD9D3B" /f

REG DELETE "HKEY_CLASSES_ROOT\Installer\Products\4D880477777087D409D44E533B815F2D" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Security Client" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{774088D4-0777-4D78-904D-E435B318F5D2}" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{77A776C4-D10F-416D-88F0-53F2D9DCD9B3}" /f

REG DELETE "HKEY_CLASSES_ROOT\Installer\UpgradeCodes\1F69ACF0D1CF2B7418F292F0E05EC20B" /f

REG DELETE "HKEY_CLASSES_ROOT\Installer\UpgradeCodes\11BB99F8B7FD53D4398442FBBAEF050F" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\4C677A77F01DD614880F352F9DCD9D3B" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\4D880477777087D409D44E533B815F2D" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UpgradeCodes\11BB99F8B7FD53D4398442FBBAEF050F" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UpgradeCodes\1F69ACF0D1CF2B7418F292F0E05EC20B" /f

takeown /f "%ProgramData%\Microsoft\Microsoft Antimalware" /a /r

takeown /f "%ProgramData%\Microsoft\Microsoft Security Client" /a /r

takeown /f "%ProgramFiles%\Microsoft Security Client" /a /r

REM Delete the MSE folders.

rmdir /s /q "%ProgramData%\Microsoft\Microsoft Antimalware"

rmdir /s /q "%ProgramData%\Microsoft\Microsoft Security Client"

rmdir /s /q "%ProgramFiles%\Microsoft Security Client"

REM Stop the WMI and its dependency services

sc stop sharedaccess

sc stop mpssvc

sc stop wscsvc

sc stop iphlpsvc

sc stop winmgmt

REM Delete the Repository folder.

rmdir /s /q "C:\Windows\System32\wbem\Repository"

sc stop
pause
EXIT