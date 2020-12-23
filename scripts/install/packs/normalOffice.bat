choco install googlechrome -y
choco install adguard-chrome -y
choco install notepadplusplus.install -y
choco install vlc -y
choco install winrar -y
choco install teamviewer -y
choco install office365business -y
choco install adobereader -y
set actualPath = %~dp0
cd antivirus
call windowsDefender.bat
cd actualPath