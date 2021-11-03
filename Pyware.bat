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

@echo off
title Loading Pyware . . . 
if not exist %appdata%\Pyware\ goto pywarefilesdownload
if not exist %appdata%\Pyware\Pyware.bat goto pywarefilesdownload

:config
chcp 65001 >nul
cd %appdata%\Pyware\
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
title Pyware Console [Version 0.1]

:: ----------- Variables ----------- ::

for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api64.ipify.org') do set PublicIPV6=%%a
set LoginLOG=https://discord.com/api/webhooks/899201532992561202/DI-cX4ff1sPetnHtis9S1RLvhowjjzsRZTLWrUxvfjueAwALXIpmRYlKdW4JBqJhCUni
set DDoSLOG=https://discord.com/api/webhooks/899870530419703868/4zq84JKbIqgqz42U6Rj1ZAG8T1_aMmSnAfcHA1ROOtEHMc8ftnMlpzHVSx5q1qaSXQ63
set user=root
goto console

:: ----------- Main ----------- ::

:console
cls
echo Pyware Console [Version 0.0]
echo (c) Pyware. All rights reserved.
echo.
goto consoleinput

:consoleinput
set /p input= %USERNAME%@%user% ~ # 
set command=%input:~5,32%
set color=%input:~6,32%
set title=%input:~6,32%
set tcpi=%input:~6,32%
set tcpp=%input:~7,32%
if ["%input%"] == ["help"] goto help
if ["%input%"] == ["ping %command%"] goto ping
if ["%input%"] == ["color %color%"] goto color
if ["%input%"] == ["title %title%"] goto title
if ["%input%"] == ["titlereset"] goto titlereset
if ["%input%"] == ["webem"] goto webem
if ["%input%"] == ["pping"] goto pping REM  Pings an external IP with TCP port. (Not Finished)
if ["%input%"] == ["ddos"] goto ddos REM  Redirects you to a DDosing Console. (Not Finished)
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
cd %appdata%\Pyware\
paping.exe google.com -p 80 -c 3
goto consoleinput
:: ----------- paping ----------- ::


:help
echo.
echo   ping ^<ip^>                 Pings an external IP.
echo.
echo   pping ^<ip^> ^<port^>         Pings an external IP with TCP port.
echo.
echo   ddos                      Redirects you to a DDosing Console.
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
echo   For more information visit pyware.xyz
echo.
goto consoleinput


:color
color %color%
goto consoleinput


:title
title %title%
goto consoleinput


:titlereset
title Pyware Console [V 0.1]
goto consoleinput

:update
if not "%1"=="am_admin" goto updateadmin
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/Pyware.bat -Outfile C:\Users\%USERNAME%\Desktop\Pyware.bat"
echo.
echo Successfully updated Pyware to the latest and stable version.
echo.
echo Updated File Directory: C:\Users\%USERNAME%\Desktop\Pyware.bat
echo.
goto consoleinput

:updateadmin
echo.
echo Updating Pyware to the latest version requires administrator privledges.
echo If you would like to grant administrator privledges please . . .
pause
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)


:ddos
exit


:ipl
exit


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
goto consoleput


:python
python
goto consoleinput

:fixpyware
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata%
mkdir Pyware
cd %appdata%\Pyware\
if not exist %appdata%\Pyware\Pyware.bat powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/AA206yt/Pyware/main/Pyware.bat -Outfile %appdata%\Pyware\Pyware.bat"
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto consoleinput


:pywarefilesdownload
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd %appdata%
mkdir Pyware
cd %appdata%\Pyware\
if not exist %appdata%\Pyware\paping.exe bitsadmin /transfer paping.exe /download /priority foreground "https://github.com/AA206yt/Pyware/raw/main/paping.exe" "%appdata%\Pyware\paping.exe"
goto config
