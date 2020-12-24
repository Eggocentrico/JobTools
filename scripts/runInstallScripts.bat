@echo off
powershell -command "Set-ExecutionPolicy 0"
powershell "& ""%~dp0install\installChocolatey"""
cd install/packs
start "runtimes" /b /w cmd /c call runtimes.bat 
start "normalOffice" /b /w cmd /c call normalOffice.bat
cd ../../drivers
netsh advfirewall firewall add rule name="Driver Installation" dir=in action=allow program="%~dp0drivers\SDI_R2009" enable=yes
netsh advfirewall firewall add rule name="Driver Installation x64" dir=in action=allow program="%~dp0drivers\SDI_x64_R2009" enable=yes
start /b /w "driverInstall" cmd /c call SDI_auto.bat -autoinstall -nogui -autoclose
cd ..
powershell -command "Set-ExecutionPolicy Restricted"
if %1 == -a (
    cd activate
    reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
    if %OS%==32BIT cd activateWindows/vlmcsd32
    if %OS%==64BIT cd activateWindows/vlmcsd64
    TIMEOUT /T 10
    start "windowsActivate" /b /w cmd /c call install.bat
    cd ../..
    start "officeActivate" /b /w cmd /c call activateOffice.bat
    echo activate
)
