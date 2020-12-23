powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
set actualPath = %~dp0
cd install
start "" /b /w cmd /c runtimes.bat 
start "" /b /w cmd /c normalOffice.bat
cd %actualPath%
powershell -command "Set-ExecutionPolicy Restricted"