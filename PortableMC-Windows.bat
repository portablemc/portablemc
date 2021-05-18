::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpYTQqRAE+1EbsQ5+n//NaLrUoSGus8d+8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkgaH2Q=
::ZQ05rAF9IBncCkqN+0xwdVsFAlfMbws=
::ZQ05rAF9IAHYFVzEqQIAJwlATQaOOUaZZg==
::eg0/rx1wNQPfEVWB+kM9LVsJDDSNLn+7BLkZxcu22OOJpkIKR4I=
::fBEirQZwNQPfEVWB+kM9LVsJDDSNLn+7BLkZxcu22OOJpkIKR4I=
::cRolqwZ3JBvQF1fEqQIAJwlATQaOOSuXD7sZ6/r66f7HiEwLVaIafIbP07uAYYA=
::dhA7uBVwLU+EWEmL5lYxKhdRQQfi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBpYTQqRAE+1EbsQ5+n//NaXrV8JVeAzfaL4l4OHLuQc/VaqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo Portable Minecraft Launcher by yeeted_memezz and PiSaucer
echo Originaly Created By: LeeTheENTP
echo Project Website: portablemc.github.io
echo Please Check Out My Website yeetedmeme.js.org
echo v1.3.3
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
if not exist "%CD%\GameData\AppData\.minecraft" mkdir "%CD%\GameData\AppData\.minecraft"
if not exist "%CD%\GameData\Minecraft" mkdir "%CD%\GameData\Minecraft"
if not exist "%CD%\GameData\Minecraft\Minecraft.exe" goto download
 
:launch
color 0a
echo Minecraft has been downloaded! It is located in GameData\Minecraft.
echo Launching...
timeout /t 3 /nobreak > NUL
start "Minecraft" "%CD%\GameData\Minecraft\Minecraft.exe" --workDir "%CD%\GameData\AppData\.minecraft"
goto end
 
:download
color 0c
echo Minecraft launcher not found! Downloading...
timeout /t 3 /nobreak > NUL
powershell "Import-Module BitsTransfer; Start-BitsTransfer 'https://launcher.mojang.com/download/Minecraft.exe' '%CD%\GameData\Minecraft\Minecraft.exe'"
powershell "Import-Module BitsTransfer; Start-BitsTransfer 'https://www.dropbox.com/s/ly1111w198fnvt0/servers.dat?dl=1' '%CD%\GameData\AppData\.minecraft\servers.dat'"
goto launch
 
:end