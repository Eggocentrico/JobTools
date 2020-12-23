start "" "C:\ProgramData\chocolatey\bin\choco.exe" install googlechrome -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install adguard-chrome -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install notepadplusplus.install -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install vlc -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install winrar -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install teamviewer -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install office365business -y
start "" "C:\ProgramData\chocolatey\bin\choco.exe" install adobereader -y
set actualPath = %~dp0
cd antivirus
call windowsDefender.bat
cd actualPath