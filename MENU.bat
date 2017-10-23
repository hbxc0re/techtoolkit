@echo off
mode con: cols=115 lines=45
if exist "C:\Tech Tools" goto skip
if not exist "C:\Tech Tools" goto continue
:continue
md "C:\Tech Tools"
cd c:\TOOLS
copy CONNECT.bat "C:\Tech Tools" >nul
copy G-CustomBrowser.exe "C:\Tech Tools" >nul
copy mouse.exe C:\ >nul
start serv-fix-checker.bat
start attribs.bat
start updater.bat
:skip
start regedits.bat
start javacheck.bat
echo.
echo                                   Technicians Toolkit v1.5
echo.
echo      ----------------------------------------------------------------------------------------
echo      l                    THIS TOOL IS FOR OUR TECHNICIANS USE ONLY !                       l
echo      l                    PLEASE DO NOT PRESS ANY NUMBERS OR WORRY ABOUT                    l
echo      l                    ITS PRESENCE, WE WILL INFORM YOU WHEN DONE.                       l
echO      ----------------------------------------------------------------------------------------
echo.
echo.
echo    -----OTR TOOLS-----              -----Tune Up Tools-----               ----Extras----
echo.
echo      1.  Install Mbam                   8.  Run Tfc                        34. Toggle Hidden Files (on/off)
echo      2.  Run Hitman Pro                 9.  Run Ccleaner                   35. Open Custom Search
echo      3.  Run Tdss                       10. Reset I.E.                     36. Update Internet Explorer
echo      4.  Run TDSSN                      11. Open Virtual Memory Location   37. Adobe Flash Plugin for I.E.
echo      5.  Open Locations Vista-7/8/10    12. Fix Event Viewer               38. Adobe Flash Plugin for Others
echo      6.  Open Locations Xp              13. Open Indexing Location         
echo      7.  Run Unhide                     14. Run Shutdown Tweak
echo                                         15. Disable Uac
echo.                                                                               
echo    -----Misc Tools-----             -----Av Removal Tools-----                                    
echo.
echo     16. Install Java                    25. Remove Norton                           
echo     17. Install Java Safe Mode          26. Remove Mcafee                            
echo     18. File Assoc Fixes Xp             27. Remove AVG                          
echo     19. File Assoc Fixes Vista          28. Run Mbam Clean
echo     20. File Assoc Fixes Win 7          29. Remove Security Essentials
echo     21. Install Uninstaller App         30. All Others
echo     22. Adobe flash player page            
echo     23. Adobe reader page              
echo     24. Install Firefox             -----Work Completed Links-----       
echo.
echo.                                        
echo.                                       
echo.
echo.                                      
:top 
set /p option= Enter Choice.....
if %option%==1  goto mbammain
if %option%==2  goto hitmanmain
if %option%==3  goto tdss-sep
if %option%==4  goto tdssn
if %option%==5  goto inflocvista-7
if %option%==6  goto inflocxp
if %option%==7  goto unhide
if %option%==8  goto tfc
if %option%==9  goto cc
if %option%==10 goto iereset
if %option%==11 goto sysprop
if %option%==12 goto ev
if %option%==13 goto compwindow
if %option%==14 goto shutdownfast
if %option%==15 goto uac
if %option%==16 goto java
if %option%==17 goto javasafe
if %option%==18 goto xpassoc
if %option%==19 goto vistaassoc
if %option%==20 goto 7assoc
if %option%==21 goto totalun
if %option%==22 goto flash
if %option%==23 goto reader
if %option%==24 goto firefox
if %option%==25 goto nrt
if %option%==26 goto mcpr
if %option%==27 goto avg
if %option%==28 goto rem-mbam
if %option%==29 goto ms-essentials-remove
if %option%==30 goto allothers
if %option%==31 goto tucomplete
if %option%==32 goto otrtucomplete
if %option%==33 goto otherworkcomplete
if %option%==34 goto showhiddenfiles
if %option%==35 goto search
if %option%==36 goto updateie
if %option%==37 goto flashie
if %option%==38 goto flashothers
if %option%==913 goto uac-ev-tu-regtweak
if %option%==89 goto cctfc
if %option%==cl goto changelog
if %option%==ar goto addremove
if %option%==783 goto openctt
if %option%==si goto system
if %option%==ev goto openev
if %option%==dev goto devmgr
if %option%==nc goto ncpa
if %option%==ms goto mscon
if %option%==sr goto sysrestore
if %option%==cm goto compmgmt
if %option%==ser goto services
if %option%==f goto folder 
if %option%==dri goto drivers
if %option%==dm goto diskmgmt
if %option%==re goto registry
if %option%==fo goto folderopt


:flashie
start flashpluginIE.bat
goto top

:flashothers
start flashpluginOTHERS.bat
goto top

:search
start search.bat
goto top

:showhiddenfiles
start showhidden.vbs 
goto top

:updateie
start ieupdater.bat
goto top


:system
if exist c:\Users goto sysinfovista7
if not exist c:\Users goto sysinfoxp
goto top

:sysinfovista7
start sysinfovista7.bat
goto top

:sysinfoxp
start sysdm.cpl
goto top

:folderopt
rundll32.exe SHELL32.DLL,Options_RunDLL
goto top

:registry
start regedit.exe
goto top

:diskmgmt
start diskmgmt.msc
goto top

:drivers
start c:\windows\system32\drivers
goto top


:folder
start c:\TOOLS
goto top


:services
start services.msc
goto top

:compmgmt
start compmgmt.msc
goto top

:sysrestore
start rstrui.exe
goto top

:mscon
start msconfig.exe
goto top

:ncpa
start ncpa.cpl
goto top

:devmgr
start devmgmt.msc
goto top

:openev
start eventvwr
goto top

:vistaassoc
start VistaAssociationFixes.zip
goto top

:7assoc
start Win7AssociationFixes.zip
goto top

:xpassoc
start XpAssociationFixes.zip
goto top

:javasafe
start jsredirect.bat
goto top

:compwindow
explorer.exe /e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
goto top

:sysprop
start sysdm.cpl
goto top

:iereset
start iekill.bat
start inetcpl.cpl
goto top

:rem-mbam
start mbamclean.bat
goto top

:rem64
"C:\Program Files (x86)\Malwarebytes' Anti-Malware\unins000.exe"
goto top

:rem32
"C:\Program Files\Malwarebytes' Anti-Malware\unins000.exe"
goto top

:avg
if exist "C:\Program Files (x86)" goto avg64
if not exist "C:\Program Files (x86)" avg32
goto top

:avg32
start avgwget32.bat
goto top

:avg64
start avgwget64.bat
goto top


:firefox
start firefox.bat
goto top


:addremove
start appwiz.cpl
goto top
=============================================================================================================================
:tucomplete
if exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\Start Menu\Programs\Startup"
start http://www.techtoolkit.com/tuneup_complete.aspx
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "%userprofile%\desktop\Defender Care.lnk" del "%userprofile%\desktop\Defender Care.lnk"
if exist "C:\Documents and Settings\All Users\Desktop\TOOLKIT-V1.5.exe" del "C:\Documents and Settings\All Users\Desktop\TOOLKIT-
V1.4.6.exe"
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk" del "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk"

if exist c:\Users goto regremove
if not exist c:\Users goto skipreg

:regremove
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Restart Tool As Admin" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\*\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Change Tool Color"

rmdir /s /q c:\TOOLS
del %0


:skip reg
rmdir /s /q c:\TOOLS
del %0


========================================================================================================================
:otrtucomplete
if exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\Start Menu\Programs\Startup"
start www.techtoolkit.com/virus_removal_complete.aspx
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "%userprofile%\desktop\Defender Care.lnk" del "%userprofile%\desktop\Defender Care.lnk"
if exist "C:\Documents and Settings\All Users\Desktop\TOOLKIT-V1.5.exe" del "C:\Documents and Settings\All Users\Desktop\TOOLKIT-
V1.4.6.exe"
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk" del "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk"

if exist c:\Users goto regremove
if not exist c:\Users goto skipreg

:regremove
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Restart Tool As Admin" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\*\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Change Tool Color"

rmdir /s /q c:\TOOLS
del %0


:skip reg
rmdir /s /q c:\TOOLS
del %0
========================================================================================================================
:otherworkcomplete
start removeregedits.bat
if exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" move delfs.bat "%userprofile%\Start Menu\Programs\Startup"
start www.techtoolkit.com/standard_work_complete.aspx
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "%userprofile%\desktop\Defender Care.lnk" del "%userprofile%\desktop\Defender Care.lnk"
if exist "C:\Documents and Settings\All Users\Desktop\TOOLKIT-V1.5.exe" del "C:\Documents and Settings\All Users\Desktop\TOOLKIT-
V1.4.6.exe"
if exist %userprofile%\desktop\TOOLKIT-V1.5.exe del %userprofile%\desktop\TOOLKIT-V1.5.exe
if exist "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk" del "C:\Documents and Settings\All Users\Desktop\Defender Care.lnk"
copy removeregedits.bat c:\windows\temp


if exist c:\Users goto regremove
if not exist c:\Users goto skipreg

:regremove
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Restart Tool As Admin" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\*\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" >nul
echo Y | Reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Change Tool Color"

rmdir /s /q c:\TOOLS
del %0


:skip reg
rmdir /s /q c:\TOOLS
del %0
========================================================================================================================

:silentjava
start silentjava.bat
goto top

:flash
start iexplore http://get.adobe.com/flashplayer
goto top

:reader
start iexplore http://get.adobe.com/reader
goto top

:page2
start page2.bat
exit

:allothers
start iexplore "https://support.eset.com/kb146/?locale=en_US&viewlocale=en_US"
goto top

:tdssn
start tdssn.bat
goto top

:changelog
start changelog.txt
goto top

:otherav
start iexplore http://kb.eset.com/esetkb/index?page=content&id=SOLN146
goto top

:cctfc
start tvcc.bat
goto top

:uac-ev-tu-regtweak


if exist c:\Users goto vista7913
if not exist c:\Users goto xp913

:vista7913
start "" uac.bat
start "" ev.bat
start /wait c:\windows\System32\SystemPropertiesPerformance.exe
start /wait msconfig.exe
start /wait inetcpl.cpl
start /wait shutdown.reg
start /wait EXPLORER.EXE /e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
powercfg -h off
goto top

:xp913
start /wait clearxp.vbs
start /wait sysdm.cpl
start /wait msconfig.exe
start /wait inetcpl.cpl
start /wait shutdown.reg
start /wait EXPLORER.EXE /e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
powercfg -h off
goto top



:totalun
start totalun.bat
goto top

:intreset
start intreset.bat
goto top

:ms-essentials-remove
start ms-essentials-remove.bat
goto top

:rstrui
start restore.bat
goto top

:combofix
start cfix.bat
goto top

:tdss-sep
start tdss-sep.bat
goto top

:opencompwindow
explorer.exe /e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
goto top

:safemodeinstalls
start installsm.bat
goto top

:unhide
start unhide.exe
goto top

:inflocvista-7
start inflocvista-7.bat
goto top

:inflocxp
start inflocxp.bat
goto top

:evxp
start clearxp.vbs
goto top

:done
move done.txt c:\windows\temp
cd c:\windows\temp
start done.txt
goto top

:hitmanmain
if exist "C:\Program Files (x86)" goto hitman64bit
goto hitman32

:hitman32
start hitman32.exe /scan /noinstall
goto top

:hitman64bit
start hitman64.exe /scan /noinstall
goto top 

:eventvwr
start eventvwr
goto top


:shutdownfast
start shutdown.reg
goto top

:java
start java.bat
goto top

:nrt
start nrtwget.bat
goto top

:mcpr
start mcprwget.bat
goto top

:cc
start cc.exe 
goto top


:mbammain
if exist "C:\Program Files (x86)" start mbamupscan64.bat
if not exist "C:\Program Files (x86)" start mbamupscan32.bat
goto top

:tuneup
hstart /silent /ELEVATE
sysdm.cpl
msconfig.exe
inetcpl.cpl
goto top

:uac
start uac.bat
goto top

:ev
if exist "C:\Program Files (x86)" start ev.bat
if not exist "C:\Program Files (x86)" start clearxp.vbs
goto top

:tfc
start Tfcsep.bat
goto top