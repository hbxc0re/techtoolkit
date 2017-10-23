@ECHO OFF
SC Config AxInstSV start= demand
SC Config SensrSvc start= demand
SC Config AeLookupSvc start= demand
SC Config AppIDSvc start= demand
SC Config Appinfo start= demand
SC Config ALG start= demand
SC Config AppMgmt start= disabled
SC Config BITS start= demand
SC Config BFE start= auto
SC Config BDESVC start= demand
SC Config wbengine start= demand
SC Config bthserv start= disabled
SC Config PeerDistSvc start= disabled
SC Config CertPropSvc start= disabled
SC Config KeyIso start= demand
SC Config EventSystem start= auto
SC Config COMSysApp start= demand
SC Config Browser start= demand
SC Config VaultSvc start= demand
SC Config CryptSvc start= auto
SC Config DcomLaunch start= auto
SC Config UxSms start= auto
SC Config Dhcp start= auto
SC Config DPS start= auto
SC Config WdiServiceHost start= demand
SC Config WdiSystemHost start= demand
SC Config defragsvc start= demand
SC Config TrkWks start= auto
SC Config MSDTC start= demand
SC Config Dnscache start= auto
SC Config EFS start= demand
SC Config EapHost start= demand
SC Config Fax start= demand
SC Config fdPHost start= demand
SC Config FDResPub start= auto
SC Config gpsvc start= auto
SC Config hkmsvc start= demand
SC Config HomeGroupListener start= demand
SC Config HomeGroupProvider start= demand
SC Config hidserv start= demand
SC Config IKEEXT start= demand
SC Config CISVC start= auto
SC Config IISADMIN start= auto
SC Config UI0Detect start= demand
SC Config SharedAccess start= disabled
SC Config iphlpsvc start= auto
SC Config PolicyAgent start= demand
SC Config KtmRm start= demand
SC Config lltdsvc start= demand
SC Config LPDSVC start= auto
SC Config Mcx2Svc start= disabled
SC Config MSMQ start= auto
SC Config MSMQTriggers start= auto
SC Config clr_optimization_v2.0.50727 start= demand
SC Config ftpsvc start= auto
SC Config MSiSCSI start= demand
SC Config swprv start= demand
SC Config MMCSS start= demand
SC Config NetMsmqActivator start= auto
SC Config NetPipeActivator start= auto
SC Config NetTcpActivator start= auto
SC Config NetTcpPortSharing start= disabled
SC Config Netlogon start= demand
SC Config napagent start= demand
SC Config Netman start= demand
SC Config netprofm start= demand
SC Config NlaSvc start= auto
SC Config nsi start= auto
SC Config CscService start= auto
SC Config WPCSvc start= demand
SC Config PNRPsvc start= demand
SC Config p2psvc start= demand
SC Config p2pimsvc start= demand
SC Config pla start= demand
SC Config PlugPlay start= auto
SC Config IPBusEnum start= demand
SC Config PNRPAutoReg start= demand
SC Config WPDBusEnum start= demand
SC Config Power start= auto
SC Config Spooler start= auto
SC Config wercplsupport start= demand
SC Config PcaSvc start= demand
SC Config ProtectedStorage start= demand
SC Config QWAVE start= demand
SC Config RasAuto start= demand
SC Config RasMan start= demand
SC Config SessionEnv start= demand
SC Config TermService start= demand
SC Config UmRdpService start= demand
SC Config RpcSs start= auto
SC Config RpcLocator start= demand
SC Config RemoteRegistry start= demand
SC Config iprip start= auto
SC Config RemoteAccess start= disabled
SC Config RpcEptMapper start= auto
SC Config SeaPort start= auto
SC Config seclogon start= demand
SC Config SstpSvc start= demand
SC Config SamSs start= auto
SC Config wscsvc start= auto
SC Config LanmanServer start= auto
SC Config ShellHWDetection start= auto
SC Config simptcp start= auto
SC Config SCardSvr start= demand
SC Config SCPolicySvc start= demand
SC Config SNMP start= auto
SC Config SNMPTRAP start= auto
SC Config sppsvc start= auto
SC Config sppuinotify start= demand
SC Config SSDPSRV start= demand
SC Config StorSvc start= demand
SC Config SysMain start= auto
SC Config SENS start= auto
SC Config TabletInputService start= demand
SC Config Schedule start= demand
SC Config lmhosts start= auto
SC Config TapiSrv start= demand
SC Config TlntSvr start= disabled
SC Config Themes start= auto
SC Config THREADORDER start= demand
SC Config TBS start= demand
SC Config upnphost start= demand
SC Config ProfSvc start= auto
SC Config vds start= demand
SC Config VSS start= demand
SC Config WMSVC start= demand
SC Config WebClient start= demand
SC Config AudioSrv start= auto
SC Config AudioEndpointBuilder start= auto
SC Config SDRSVC start= demand
SC Config WbioSrvc start= demand
SC Config idsvc start= demand
SC Config WcsPlugInService start= demand
SC Config wcncsvc start= demand
SC Config WinDefend start= auto
SC Config wudfsvc start= demand
SC Config WerSvc start= demand
SC Config Wecsvc start= demand
SC Config EventLog start= auto
SC Config MpsSvc start= auto
SC Config FontCache start= auto
SC Config StiSvc start= demand
SC Config msiserver start= demand
SC Config fsssvc start= demand
SC Config Winmgmt start= auto
SC Config ehRecvr start= demand
SC Config ehSched start= demand
SC Config WMPNetworkSvc start= demand
SC Config TrustedInstaller start= demand
SC Config FontCache3.0.0.0 start= demand
SC Config WAS start= demand
SC Config WinRM start= demand
SC Config WSearch start= auto
SC Config W32Time start= demand
SC Config wuauserv start= auto
SC Config WinHttpAutoProxySvc start= demand
SC Config dot3svc start= demand
SC Config Wlansvc start= demand
SC Config wmiApSrv start= demand
SC Config LanmanWorkstation start= auto
SC Config W3SVC start= auto
SC Config WwanSvc start= demand

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

