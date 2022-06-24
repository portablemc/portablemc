@echo off
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo Portable Minecraft Launcher by greymesa and PiSaucer
echo Project Website: portablemc.ml
echo Please Check Out My Website greymesa.tech
echo v1.4.1
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
