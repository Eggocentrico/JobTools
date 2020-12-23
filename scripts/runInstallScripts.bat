powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
set actualPath = %~dp0
cd install
start "" /w runtimes.bat
start "" /w normalOffice.bat
cd %actualPath%
powershell -command "Set-ExecutionPolicy Restricted"