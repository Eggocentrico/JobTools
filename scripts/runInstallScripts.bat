powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
set actualPath = %~dp0
cd install
start "runtimes" /b /w cmd /c call runtimes.bat 
start "normalOffice" /b /w cmd /c call normalOffice.bat
cd %actualPath%
powershell -command "Set-ExecutionPolicy Restricted"