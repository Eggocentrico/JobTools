start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install googlechrome -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install adguard-chrome -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install notepadplusplus.install -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install vlc -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install winrar -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install teamviewer -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install office365business -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install adobereader -y
set actualPath = %~dp0
cd antivirus
call windowsDefender.bat
cd actualPath