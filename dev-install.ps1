# Install script by Lukas Bergman
# Created 2023-11-29
# Updated 2024-01-10

# Configuring chocolatey
ECHO Configuring chocolatey
choco feature enable -n allowGlobalConfirmation
choco source add -n=trv -s="https://proget.trafikverket.local/nuget/Chocolatey/"

# Apps
ECHO Installing apps
choco install notepadplusplus -y
choco install mattermost-desktop -y

# DEV
ECHO Installing dev tools
choco install git.portable -y
choco install nvm.portable -y
choco install nodejs -y
choco install sql-server-2022 -y
choco install ssms -y
choco install dotnet-sdk -y
choco install vscode -y

# Choose below which Visual Studio you wish to install
choco install visualstudio2022professional -y
#choco install visualstudio2022enterprise -y

# Post install
ECHO Post install configuration
refreshenv
git config --global push.default current
git config --global http.proxy http://proxyn.trafikverket.local:8080
npm config set registry "https://proget.trafikverket.local/npm/DefaultNpm/"
npm config set registry -g "https://proget.trafikverket.local/npm/DefaultNpm/"
choco feature disable -n allowGlobalConfirmation

# Launch Visual Studio Installer
& "C:\Program Files (x86)\Microsoft Visual Studio\Installer\setup.exe"

# Map explorer to network drive used for backups in UTV (requires reboot)
New-PSDrive -Name "Z" -PSProvider "FileSystem" -Root "\\TRV37205\Backup" -Persist
