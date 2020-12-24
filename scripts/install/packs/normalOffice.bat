for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install googlechrome -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install adguard-chrome -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install notepadplusplus.install -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install vlc -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install winrar -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install teamviewer -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install office365business -y
start /b /w "" "C:\ProgramData\chocolatey\bin\choco.exe" install adobereader -y
cd antivirus
if %v% == 10.0 (
    start "" /b /w cmd /c windowsDefender.bat
) 
else (
    start "" /b /w cmd /c malwarebytes.bat
)
cd ..