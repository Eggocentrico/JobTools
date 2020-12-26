@echo off
for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install googlechrome adguard-chrome notepadplusplus.install vlc winrar teamviewer office365business adobereader -y
cd antivirus
if %v% == 10.0 (
    start "" /b /w cmd /c windowsDefender.bat
) 
if %v% NEQ 10.0 (
    start "" /b /w cmd /c malwarebytes.bat
)
cd ..