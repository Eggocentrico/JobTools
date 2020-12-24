powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
cd install/packs
start "runtimes" /b /w cmd /c call runtimes.bat 
start "normalOffice" /b /w cmd /c call normalOffice.bat
cd ../../drivers
start /b /w "driverInstall" cmd /c call SDI_auto.bat -autoinstall -nogui -autoclose
powershell -command "Set-ExecutionPolicy Restricted"