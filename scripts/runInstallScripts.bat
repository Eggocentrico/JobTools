powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
set actualPath = %~dp0
cd install/packs
rem start "runtimes" /b /w cmd /c call runtimes.bat 
rem start "normalOffice" /b /w cmd /c call normalOffice.bat
start /b /w "driverInstall" "%dp0drivers\SDI_auto.bat" -autoinstall -nogui -autoclose
cd %actualPath%
powershell -command "Set-ExecutionPolicy Restricted"