@echo off
SC Config Alerter start= demand
SC Config ALG start= demand
SC Config appmgmt start= demand
SC Config wuaUserv start= auto
SC Config BITS start= demand
SC Config clipsrv start= demand 
SC Config Event System start= demand 
SC Config Browser start= auto
SC Config CryptSvc start= auto
SC Config dhcp start= auto 
SC Config TrkWks start= auto
SC Config msdtc start= demand 
SC Config Dnscache start= auto 
SC Config Ersvc start= auto 
SC Config EventLog start= auto 
SC Config FastUserSwitching Compatibility start= demand 
SC Config helpsvc start= auto  
SC Config HidServ start= disabled 
SC Config ImapiService start= demand
SC Config cisvc start= demand 
SC Config PolicyAgent start= auto
SC Config Dmserver start= auto
SC Config Dmadmin start= auto 
SC Config swprv start= demand 
SC Config Messenger start= disabled
SC Config Netman start= demand 
SC Config Netlogon start= auto 
SC Config Nmnsrvc start= demand 
SC Config NetDDE start= disabled 
SC Config NetDDEdsdm start= disabled
SC Config nla start= demand 
SC Config xmlprov start= demand 
SC Config NtLmSsp start= demand 
SC Config sysmonLog start= demand 
SC Config PlugPlay start= auto 
SC Config UPNPhost start= demand 
SC Config WmdmPmSN start= demand 
SC Config ProtectedStorage start= auto 
SC Config rsvp start= demand 
SC Config Rasauto start= demand 
SC Config Rasman start= demand 
SC Config RDSessMgr start= demand 
SC Config RpcSs start= auto
SC Config RpcLocator start= demand 
SC Config RemoteRegistry start= auto 
SC Config Ntmssvc start= demand 
SC Config RemoteAccess start= disabled 
SC Config secLogon start= auto 
SC Config SamSs start= auto 
SC Config wscsvc start= auto 
SC Config LanmanServer start= auto 
SC Config ShellHWDetection start= auto 
SC Config ScardSrv start= demand 
SC Config Snmp start= auto 
SC Config SSDPSRV start= demand 
SC Config SENS start= auto 
SC Config srservice start= auto
SC Config Schedule start= auto 
SC Config lmHosts start= auto 
SC Config TapiSrv start= manual 
SC Config TlntSvr start= disabled 
SC Config TermService start= demand 
SC Config Themes start= auto 
SC Config UPS start= auto
SC Config UPNPhost start= demand 
SC Config VSS start= demand
SC Config WebClient start= auto
SC Config AudioSrv start= auto
SC Config SharedAccess start= auto
SC Config stisvc start= demand
SC Config MSIServer start= demand
SC Config WinMgmt start= auto
SC Config Wmi start= demand
SC Config W32time start= auto
SC Config WZCSVC start= auto
SC Config WmiApSrv start= demand
SC Config lanmanworkstation start= auto

if exist C:\Users goto vista-7
if not exist C:\Users goto xp

:vista-7
netsh int ip reset resetlog.txt
netsh winsock reset
ipconfig /flushdns
netsh advfirewall reset
pause

:xp
netsh firewall reset
netsh int ip reset resetlog.txt
ipconfig /flushdns
netsh winsock reset catalog

echo.
echo.
CLS
echo     SERVICES RESTORED TO DEFAULTS, YOU MUST RESTART
ECHO        THE COMPUTER FOR CHANGES TO TAKE EFFECT.
ECHO.
PAUSE
EXIT