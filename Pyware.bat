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
mode con lines=33 cols=100
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
goto console

:: ----------- Main ----------- ::

:console
cls
set input= 
echo Pyware Console [Version 0.0]
echo (c) Pyware. All rights reserved.
echo.
goto consoleinput

:consoleinput
set input= 
set /p input= %USERNAME%@%user% ~ # 
set pip=%input:~5,32%
set dip=%input:~5,32%
set color=%input:~6,32%
set title=%input:~6,32%
set ppi=%input:~6,32%
set ppp=%input:~17,32%
if ["%input%"] == ["help"] goto help REM Opens the help page.
if ["%input%"] == ["ping %pip%"] goto ping REM Pings an external IP.
if ["%input%"] == ["color %color%"] goto color REM Sets the default console foreground and background colors.
if ["%input%"] == ["title %title%"] goto title REM Sets the window title for a Pyware.exe session.
if ["%input%"] == ["titlereset"] goto titlereset
if ["%input%"] == ["webem"] goto webem
if ["%input%"] == ["pping %ppi%"] goto pping REM  Pings an external IP with TCP port. (Not Finished)
if ["%input%"] == ["ddos %dip%"] goto ddos REM  Redirects you to a DDosing Console. (Not Finished)
if ["%input%"] == ["ipl"] goto iplookup REM  Looks up approximate data for an external IP. (Not Finished)
if ["%input%"] == ["ipinfo"] goto ipinfo REM  Info about you're External IP, IPV4, and IPV6.
if ["%input%"] == ["ipconfig"] goto ipinfo REM  Info about External IP, IPV4, and IPV6.
if ["%input%"] == ["ipconfiguration"] goto ipinfo REM  Info about External IP, IPV4, and IPV6.
if ["%input%"] == ["credits"] goto credits REM  Rediects you to a page that shows people who helped develeped Pyware. 
if ["%input%"] == ["clear"] goto console REM  Clears all previous commands.
if ["%input%"] == ["cls"] goto console REM  Clears all previous commands.
if ["%input%"] == ["update"] goto update REM  Updates Pyware Console to the latest and stable version. (Not Finished)
if ["%input%"] == ["fixpyware"] goto fixpyware
if ["%input%"] == ["python"] goto python
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

:ipl
exit


:ipinfo
set input= 
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


:python
set input=  
python
goto consoleinput

:fixpyware
set input= 
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


hihi
