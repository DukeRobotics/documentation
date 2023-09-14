# This script will install the following applications:
# - Docker Desktop
# - Git
# - GitHub Desktop
# - Slack
# - Python3
# The script also gives the option to install VS Code.

# Set to exit if error occurs
$ErrorActionPreference = "Stop"

Write-Host "Beginning Duke Robotics Software Install..." -ForegroundColor Yellow

# install winget if not already installed
if (-not(Get-Command winget -ErrorAction SilentlyContinue)){
    # print message
    Write-Host "WinGet is not installed. Installing WinGet..." -ForegroundColor Yellow
    # $progressPreference = 'silentlyContinue'
    # Write-Information "Downloading WinGet and its dependencies..."
    # Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    # Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
    # Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx -OutFile Microsoft.UI.Xaml.2.7.x64.appx
    # Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
    # Add-AppxPackage Microsoft.UI.Xaml.2.7.x64.appx
    # Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Install-Script winget-install -Force
}

$Disk = Get-WmiObject -Class Win32_LogicalDisk
$Freespace = $Disk.FreeSpace/1GB
# if freespace is less than 25GB, exit the script with an error message
if ($Freespace -lt 25){
    Write-Host "Not enough disk space to install all packages. Please free up some space and try again." -ForegroundColor Red
    exit
} 

winget install -e --id Docker.DockerDesktop
winget install -e --id Git.Git
winget install -e --id GitHub.GitHubDesktop
winget install -e --id SlackTechnologies.Slack
winget install -e --id Python.Python.3
winget install -e --id=Mobatek.MobaXterm
# Ask user if they want to install the optional packages
$response = Read-Host -Prompt "Do you want to install VS Code? (y/N)"
# If $respose is y, install the optional packages
if ($response -eq 'y'){
    winget install -e --id Microsoft.VisualStudioCode
}