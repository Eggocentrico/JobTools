start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w  install googlechrome -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w  install adguard-chrome -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w  install notepadplusplus.install -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w  install vlc -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w  install winrar -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w install teamviewer -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w install office365business -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" /b /w install adobereader -y
set actualPath = %~dp0
cd antivirus
call windowsDefender.bat
cd actualPath