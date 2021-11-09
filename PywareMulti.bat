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
color b
chcp 65001 >nul
cd %appdata%\Pyware\ >nul
mode con lines=25 cols=70
SETLOCAL EnableDelayedExpansion >nul
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

:: ----------- Variables ----------- ::

title Pyware Console [Version 0.1]
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api64.ipify.org') do set PublicIPV6=%%a
set LoginLOG=https://discord.com/api/webhooks/899201532992561202/DI-cX4ff1sPetnHtis9S1RLvhowjjzsRZTLWrUxvfjueAwALXIpmRYlKdW4JBqJhCUni
set DDoSLOG=https://discord.com/api/webhooks/899870530419703868/4zq84JKbIqgqz42U6Rj1ZAG8T1_aMmSnAfcHA1ROOtEHMc8ftnMlpzHVSx5q1qaSXQ63
set filepath=%~f0
set user=root
goto consoleinput

:: ----------- Main ----------- ::

:consoleinput
cls
color b
set input= 
mode con lines=25 cols=71
echo.
echo.
echo                   ▄▄▄  ▄  ▄▌▄▄  ▄▌   ▄▄▄  ▄▄▄  ▄▄▄ 
echo                   █ ▄█▐█  █▌██  █▌▐█ █  █ ▀▄ █ ▀▄ ▀
echo                   ██▀ ▐█▌▐█ ██ ▐█▐▐▌ █▀▀█ ▐▀▀▄ ▐▀▀ ▄
echo                   █     ██  ▐█▌██▐█▌ █  █ ▐█ █▌▐█▄▄▌
echo                   ▀      █   ▀▀▀▀ ▀  ▀  ▀  ▀  ▀ ▀▀▀ 
echo.            
echo.
echo.
echo           [ 1 - IP Pinger      ]     [ 7 - IP Lookup      ]
echo           [ 2 - TCP Pinger     ]     [ 8 - Console        ]
echo           [ 3 - Port Scanner   ]     [ 9 - Cleaner        ]
echo           [ 4 - IP Stresser    ]     [ 10 - Credits       ]
echo           [ 5 - Webem          ]     [ 11 - Update        ]
echo           [ 6 - IP Info        ]     [ 12 - Python        ]
echo.
echo                            [ h - Help   ]
echo                            [ x - Exit   ]
echo.
echo.
echo.
set /p input= Input: 
if ["%input%"] == ["h"] goto help REM Opens the help page.
if ["%input%"] == ["1"] goto ping REM Pings an external IP.
if ["%input%"] == ["5"] goto webem
if ["%input%"] == ["2"] goto pping REM  Pings an external IP with TCP port. (Not Finished)
if ["%input%"] == ["4"] goto ddos REM  Redirects you to a DDosing Console. (Not Finished)
if ["%input%"] == ["7"] goto iplookup REM  Looks up approximate data for an external IP. (Not Finished)
if ["%input%"] == ["6"] goto ipinfo REM  Info about you're External IP, IPV4, and IPV6.
if ["%input%"] == ["10"] goto credits REM  Rediects you to a page that shows people who helped develeped Pyware. 
if ["%input%"] == ["11"] goto update REM  Updates Pyware Console to the latest and stable version. (Not Finished)
if ["%input%"] == ["fixpyware"] goto fixpyware
if ["%input%"] == ["12"] goto python
if ["%input%"] == ["x"] exit


:invalid
echo.
echo Invavlid command. (%input%)
echo.
timeout 2 >nul
goto consoleinput


:ping
set /p IP= IP: 
cls
ping %ip% -t
goto consoleinput


:: ----------- paping ----------- ::
:pping
if not "%1"=="am_admin" goto ppingadmin
cd %appdata%\Pyware\
set /p ppi= IP: 
set /p ppp= Port: 
cls
paping %ppi% -p %ppp%
goto consoleinput

:ppingadmin
cls
echo.
echo Using the 'TCP Pinger' function requires administrator privledges.
echo If you would like to grant administrator privledges please
echo press any key to continue . . .
pause >nul
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: ----------- paping ----------- ::


:help
cls
mode con lines=45 cols=100
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
echo   clear                     Clears all previous commands.
echo.
echo.
echo   For more information, visit pyware.xyz
echo.
pause
goto consoleinput


:: ----------- webem ----------- ::

:webem
cls
title Webem
echo.
echo                   ╔╗╔╗╔╗    ╔╗          
echo                   ║║║║║║    ║║          
echo                   ║║║║║║╔══╗║╚═╗╔══╗╔╗╔╗
echo                   ║╚╝╚╝║║╔╗║║╔╗║║╔╗║║╚╝║
echo                   ╚╗╔╗╔╝║║═╣║╚╝║║║═╣║║║║
echo                    ╚╝╚╝ ╚══╝╚══╝╚══╝╚╩╩╝
echo.                                       
echo.
echo                   [ 1 - New Webhook    ]
echo                   [ 2 - Delete Webhook ]
echo                   [ 3 - Spammer        ]
echo                   [ x - Back to pyware ]
echo.
set /p input= Input: 
if ["%input%"] == ["1"] goto new
if ["%input%"] == ["2"] goto delwebhook
if ["%input%"] == ["3"] goto spammer
if ["%input%"] == ["x"] goto consoleinput

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
cls
if not "%1"=="am_admin" goto updateadmin
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/PywareMulti.bat -Outfile %filepath%"
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
set dargs=%input:~5,32%
echo [38;2;220;95;255m█[38;2;185;95;255m█[38;2;180;95;255m█[38;2;175;95;255m█[38;2;170;95;255m█[38;2;165;95;255m█[38;2;160;95;255m╗[38;2;155;95;255m [38;2;150;95;255m█[38;2;145;95;255m█[38;2;140;95;255m╗[38;2;135;95;255m [38;2;130;95;255m [38;2;125;95;255m [38;2;120;95;255m█[38;2;115;95;255m█[38;2;110;95;255m╗██╗    ██╗ █████╗ [38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m█[38;2;140;95;255m█[38;2;140;95;255m█[38;2;140;95;255m█[38;2;170;95;255m╗[38;2;165;95;255m [38;2;160;95;255m███████╗
echo [38;2;220;95;255m█[38;2;185;95;255m█[38;2;180;95;255m╔[38;2;175;95;255m═[38;2;170;95;255m═[38;2;165;95;255m█[38;2;160;95;255m█[38;2;155;95;255m╗[38;2;150;95;255m╚[38;2;145;95;255m█[38;2;140;95;255m█[38;2;135;95;255m╗[38;2;130;95;255m [38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m╔[38;2;110;95;255m╝██║    ██║██╔══██╗[38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m╔[38;2;140;95;255m═[38;2;140;95;255m═[38;2;140;95;255m█[38;2;170;95;255m█[38;2;165;95;255m╗[38;2;160;95;255m██╔════╝
echo [38;2;220;95;255m█[38;2;185;95;255m█[38;2;180;95;255m█[38;2;175;95;255m█[38;2;170;95;255m█[38;2;165;95;255m█[38;2;160;95;255m╔[38;2;155;95;255m╝[38;2;150;95;255m [38;2;145;95;255m╚[38;2;140;95;255m█[38;2;135;95;255m█[38;2;130;95;255m█[38;2;125;95;255m█[38;2;120;95;255m╔[38;2;115;95;255m╝[38;2;110;95;255m ██║ █╗ ██║███████║[38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m█[38;2;140;95;255m█[38;2;140;95;255m█[38;2;140;95;255m█[38;2;170;95;255m╔[38;2;165;95;255m╝[38;2;160;95;255m█████╗  
echo [38;2;220;95;255m█[38;2;185;95;255m█[38;2;180;95;255m╔[38;2;175;95;255m═[38;2;170;95;255m═[38;2;165;95;255m═[38;2;160;95;255m╝[38;2;155;95;255m [38;2;150;95;255m [38;2;145;95;255m [38;2;140;95;255m╚[38;2;135;95;255m█[38;2;130;95;255m█[38;2;125;95;255m╔[38;2;120;95;255m╝[38;2;115;95;255m [38;2;110;95;255m ██║███╗██║██╔══██║[38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m╔[38;2;140;95;255m═[38;2;140;95;255m═[38;2;140;95;255m█[38;2;170;95;255m█[38;2;165;95;255m╗[38;2;160;95;255m██╔══╝  
echo [38;2;220;95;255m█[38;2;185;95;255m█[38;2;180;95;255m║[38;2;175;95;255m [38;2;170;95;255m [38;2;165;95;255m [38;2;160;95;255m [38;2;155;95;255m [38;2;150;95;255m [38;2;145;95;255m [38;2;140;95;255m [38;2;135;95;255m█[38;2;130;95;255m█[38;2;125;95;255m║[38;2;120;95;255m [38;2;115;95;255m [38;2;110;95;255m ╚███╔███╔╝██║  ██║[38;2;125;95;255m█[38;2;120;95;255m█[38;2;115;95;255m║[38;2;140;95;255m [38;2;140;95;255m [38;2;140;95;255m█[38;2;170;95;255m█[38;2;165;95;255m║[38;2;160;95;255m███████╗
echo [38;2;220;95;255m╚[38;2;185;95;255m═[38;2;180;95;255m╝[38;2;175;95;255m [38;2;170;95;255m [38;2;165;95;255m [38;2;160;95;255m [38;2;155;95;255m [38;2;150;95;255m [38;2;145;95;255m [38;2;140;95;255m [38;2;135;95;255m╚[38;2;130;95;255m═[38;2;125;95;255m╝[38;2;120;95;255m [38;2;115;95;255m [38;2;110;95;255m  ╚══╝╚══╝ ╚═╝  ╚═╝[38;2;125;95;255m╚[38;2;120;95;255m═[38;2;115;95;255m╝[38;2;140;95;255m [38;2;140;95;255m [38;2;140;95;255m╚[38;2;170;95;255m═[38;2;165;95;255m╝[38;2;160;95;255m╚══════╝
echo.
echo POWERED BY HYDROAPI (OWNED BY PY)
echo.
timeout 3 >nul
pause >nul
goto main


:: ----------- IPLookup ----------- ::
:IPLookup
cls
mode con lines=30 cols=60
title IP Lookup
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
:lookup
cls
echo.
echo.
echo              ▄▄▄  ▄  ▄▌▄▄  ▄▌   ▄▄▄  ▄▄▄  ▄▄▄ 
echo              █ ▄█▐█  █▌██  █▌▐█ █  █ ▀▄ █ ▀▄ ▀
echo              ██▀ ▐█▌▐█ ██ ▐█▐▐▌ █▀▀█ ▐▀▀▄ ▐▀▀ ▄
echo              █     ██  ▐█▌██▐█▌ █  █ ▐█ █▌▐█▄▄▌
echo              ▀      █   ▀▀▀▀ ▀  ▀  ▀  ▀  ▀ ▀▀▀ 
echo.
echo.
echo                   [ 1 - View Your IP    ]
echo                   [ 2 - Lookup An IP    ]
echo                   [ x - Back to pyware  ]
echo.
echo.
echo.
set /p action=Input: 
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
if '%action%'=='x' goto consoleinput

:error
echo.
echo Invalid command, try again [!]
timeout 3 >nul
goto menu

:iplookup
cls
echo.
echo.
echo               Type an IP to lookup
echo.
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
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
pause
goto lookup
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:loc:=Location:	!
	set data=!data:org:=ISP:		!
	set data=!data:postal:=Postal:	!
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ip%'=='' goto :lookup
goto :Lookup
:: ----------- IPLookup ----------- ::


:ipinfo
cls
echo.
ipconfig | find /i "IPV4"
echo.
ipconfig | find /i "IPV6"
echo.
echo    [40;36mExternal IPV4 . . . . . . . . . . : %PublicIP% [40;37m
echo.
echo    [40;36mExternal IPV6 . . . . . . . . . . : %PublicIPV6% [40;37m
echo.
pause
goto consoleinput


:credits
cls
echo.
echo     [40;36m=====================================[40;37m
echo     [40;36m=     Pythoral - Main Developer     =[40;37m
echo     [40;36m=     Duelawig - Main Developer     =[40;37m
echo     [40;36m=====================================[40;37m
echo.
pause
goto consoleinput


:python
cls
python
goto consoleinput

:fixpyware
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata% >nul
mkdir Pyware >nul
cd %appdata%\Pyware\ >nul
if not exist %appdata%\Pyware\Pyware.bat powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/PywareMulti.bat -Outfile %filepath%"
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto consoleinput


:pywarefilesdownload
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata% >nul
mkdir Pyware >nul
cd %appdata%\Pyware\ >nul
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto config

ldaklsdjasd
