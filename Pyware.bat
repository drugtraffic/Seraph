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

:config
chcp 65001 >nul
cd %appdata%\Pyware\ >nul
SETLOCAL EnableDelayedExpansion >nul
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
title Checking Credentials . . .
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api64.ipify.org') do set PublicIPV6=%%a
set LoginLOG=https://discord.com/api/webhooks/899201532992561202/DI-cX4ff1sPetnHtis9S1RLvhowjjzsRZTLWrUxvfjueAwALXIpmRYlKdW4JBqJhCUni
set DDoSLOG=https://discord.com/api/webhooks/899870530419703868/4zq84JKbIqgqz42U6Rj1ZAG8T1_aMmSnAfcHA1ROOtEHMc8ftnMlpzHVSx5q1qaSXQ63
set filepath=%~f0
set user=root
goto console

:: ----------- Main ----------- ::

:console
cls
title Pyware Console [Version 0.1]
mode con lines=33 cols=100 >nul
set input= 
echo Pyware Console [Version 0.0]
echo (c) Pyware. All rights reserved.
echo.
goto consoleinput

:consoleinput
set input= 
set /p input= %USERNAME%@%user% ~ # 
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
if ["%input%"] == ["color %color%"] goto color REM Sets the default console foreground and background colors.
if ["%input%"] == ["title %title%"] goto title REM Sets the window title for a Pyware.exe session.
if ["%input%"] == ["titlereset"] goto titlereset
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
if ["%input%"] == ["x"] exit


:invalid
echo.
echo '%input%' is not recognized as an internal or external command.
echo.
goto consoleinput


:ping
set ip=%input:~5,32%
ping %ip% -n 3
goto consoleinput


:: ----------- paping ----------- ::
:pping
if not "%1"=="am_admin" goto ppingadmin
cd %appdata%\Pyware\
set /p ppp= Port: 
paping.exe %ppi% -p %ppp% -c 3
goto consoleinput

:ppingadmin
echo.
echo Using the 'pping' command requires administrator privledges.
echo If you would like to grant administrator privledges please
echo press any key to continue . . .
pause >nul
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: ----------- paping ----------- ::


:help
mode con lines=38 cols=100 >nul
echo.
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
echo   color                     Sets the default console foreground and background colors.
echo.
echo   title                     Sets the window title for a Pyware.exe session.
echo.
echo   python                    Redirects you to Python Terminal (Latest Version of Python Required)
echo.
echo   node                      Rediects you to Node.js Terminal (Latest Version of Node.js Required)
echo.
echo   cmd ^<command^>              Runs a Windows Command Prompt Command.
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
goto consoleinput


:color
color %color%
goto consoleinput


:: ----------- title ----------- ::
:title
title %title%
goto consoleinput

:titlereset
title Pyware Console [V 0.1]
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
if ["%input%"] == ["3"] goto spammer
if ["%input%"] == ["x"] goto console

:new
cls
set /p WebURL= Webhook URL: 
set /p Webname= Webhook Name: 
cls
:input
set /p say= Input: 
if ["%say%"] == ["webhook stop"] goto webem
set newweb=%WebURL%
curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%say%\"}" ^
  %newweb%
goto input

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
curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
  curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%Webname%\", \"content\": \"%WebCon%\"}" ^
  %WebURL%
goto webspam

:: ----------- webem ----------- ::


:: ----------- update ----------- ::
:update
if not "%1"=="am_admin" goto updateadmin
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/Pyware.bat -Outfile %filepath%"
echo.
echo Successfully updated Pyware to the latest and stable version.
echo.
goto consoleinput

:updateadmin
echo.
echo Using the 'update' command requires administrator privledges.
echo If you would like to grant administrator privledges please
echo press any key to continue . . .
pause >nul
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: ----------- update ----------- ::


:ddos
cls
echo POWERED BY HYDROAPI (OWNED BY PY)
echo.
timeout 3 >nul
pause >nul
goto main


:: ----------- IPLookup ----------- ::
:iplookup
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
	set data=!data:ip:=[40;36mIP:		![40;37m
	set data=!data:hostname:=[40;36mHostname:	![40;37m
	set data=!data:city:=[40;36mCity:		![40;37m
	set data=!data:region:=[40;36mState:	![40;37m
	set data=!data:country:=[40;36mCountry:	![40;37m
	set data=!data:loc:=[40;36mLocation:	![40;37m
	set data=!data:org:=[40;36mISP:		![40;37m
	set data=!data:postal:=[40;36mPostal:	![40;37m
	echo [40;36m!data![40;37m
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
goto consoleinput
:: ----------- IPLookup ----------- ::


:ipinfo
echo.
ipconfig | find /i "IPV4"
echo.
ipconfig | find /i "IPV6"
echo.
echo    [40;36mExternal IPV4 . . . . . . . . . . : %PublicIP% [40;37m
echo.
echo    [40;36mExternal IPV6 . . . . . . . . . . : %PublicIPV6% [40;37m
echo.
goto consoleinput


:credits
echo.
echo     [40;36m=====================================[40;37m
echo     [40;36m=     Pythoral - Main Developer     =[40;37m
echo     [40;36m=     Duelawig - Main Developer     =[40;37m
echo     [40;36m=====================================[40;37m
echo.
goto consoleinput


:: ----------- python ----------- ::
:python
if not exist C:\Python310 goto pythoninstall
python
goto consoleinput
:pythoninstall
echo.
echo Python is not installed on this machine, would you like to install it?
echo.
set /p python= Choice(yes or no): 
if %python% == Yes goto pythonyes
if %python% == No goto pythonno
if %python% == yes goto pythonyes
if %python% == no goto pythonno
echo '%python%' is not a valid choice.
goto pythoninstall
:pythonyes
start https://www.python.org/
exit
:pythonno
echo.
goto consoleinput
:: ----------- python ----------- ::

:: ----------- node.js ----------- ::
:node
if not exist "C:\Program Files\nodejs" goto nodeinstall
node
goto consoleinput
:nodeinstall
echo.
echo Node.js is not installed on this machine, would you like to install it?
echo.
set /p node= Choice(yes or no): 
if %node% == Yes goto nodeyes
if %node% == No goto nodeno
if %node% == yes goto nodeyes
if %node% == no goto nodeno
echo '%node%' is not a valid choice.
goto nodeinstall
:nodeyes
start https://nodejs.org/en/
exit
:nodeno
echo.
goto consoleinput
:: ----------- node.js ----------- ::

:: ----------- cmd ----------- ::
:cmd
echo.
%cmd%
echo.
goto consoleinput
:: ----------- cmd ----------- ::

:: ----------- powershell ----------- ::
:ps
echo.
powershell %ps%
echo.
goto consoleinput
:: ----------- powershell ----------- ::

:: ----------- password ----------- ::

:pwd
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
echo Passwords do not match. & timeout 2 >nul & goto pwd
:didsetpass
echo %newpass% > %appdata%\Pyware\pywarepass.pyware
echo 0\r§mûü3F47142885E33F3EA5C8935A644E046F511B1AC02905EAC9F21E24C66998CFC+YçxâÞÀêDÿÞZOó§ UUÇ$SI¨`H.qL`4$S`ô > 4BzIoO0Fdu.dll
certutil -encode %appdata%\Pyware\pywarepass.pyware %appdata%\Pyware\23948429348.pyware
type %appdata%\Pyware\23948429348.pyware > %appdata%\Pyware\4BzIoO0Fdu.dll:23948429348.pyware
del %appdata%\Pyware\23948429348.pyware >nul
del %appdata%\Pyware\pywarepass.pyware >nul
goto console

:: ----------- password ----------- ::


:fixpyware
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata% >nul
mkdir Pyware >nul
cd %appdata%\Pyware\ >nul
if not exist %appdata%\Pyware\Pyware.bat powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/Pyware.bat -Outfile %appdata%\Pyware\Pyware.bat"
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto consoleinput


:pywarefilesdownload
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata% >nul
mkdir Pyware >nul
cd %appdata%\Pyware\ >nul
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto config
