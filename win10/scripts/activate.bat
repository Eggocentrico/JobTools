cd activate
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==32BIT cd activateWindows/vlmcsd32
if %OS%==64BIT cd activateWindows/vlmcsd64
TIMEOUT /T 10
start "windowsActivate" /b /w cmd /c call install.bat
cd ../..
start "officeActivate" /b /w cmd /c call activateOffice.bat
