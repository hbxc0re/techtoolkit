strComputer = "." 
 Set objWMIService = GetObject("winmgmts:" _ 
     & "{impersonationLevel=impersonate,(Backup)}!\\" & _ 
         strComputer & "\root\cimv2") 
 Set colLogFiles = objWMIService.ExecQuery _ 
     ("Select * from Win32_NTEventLogFile " _ 
     & "Where LogFileName='System'") 
 For Each objLogfile in colLogFiles 
     objLogFile.ClearEventLog() 
     WScript.Echo "Cleared System event log file" 
 Next

strComputer = "." 
 Set objWMIService = GetObject("winmgmts:" _ 
     & "{impersonationLevel=impersonate,(Backup)}!\\" & _ 
         strComputer & "\root\cimv2") 
 Set colLogFiles = objWMIService.ExecQuery _ 
     ("Select * from Win32_NTEventLogFile " _ 
     & "Where LogFileName='Application'") 
 For Each objLogfile in colLogFiles 
     objLogFile.ClearEventLog() 
     WScript.Echo "Cleared application event log file" 
 Next