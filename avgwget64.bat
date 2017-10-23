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


:continue
wget http://techtool.advancedtechsupport.com/avgtool64.exe
start avgtool64.exe
exit

:exitapp
exit
