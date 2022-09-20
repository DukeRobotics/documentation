# This script will install the following applications:
# - Docker Desktop
# - Git
# - GitHub Desktop
# - Windows Terminal
# - Slack
# - Python3
# - Tabby
# The script also gives the option to install VS Code.
# winget MUST BE INSTALLED BEFORE RUNNING THIS SCRIPT


winget install -e --id Docker.DockerDesktop
winget install -e --id Git.Git
winget install -e --id GitHub.GitHubDesktop
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id SlackTechnologies.Slack
winget install -e --id Python.Python.3
winget install -e --id Eugeny.Tabby
# Ask user if they want to install the optional packages
$response = Read-Host -Prompt "Do you want to install VS Code? (y/N)"
# If $respose is y, install the optional packages
if ($response -eq 'y'){
    winget install -e --id Microsoft.VisualStudioCode
}