#Requires -Version 3.0
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Output "Successfully installed Chocolatey"