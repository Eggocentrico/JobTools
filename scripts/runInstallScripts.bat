powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
set actualPath = %~dp0
cd install
call runtimes.bat
call normalOffice.bat
cd %actualPath%
powershell -command "Set-ExecutionPolicy Restricted"