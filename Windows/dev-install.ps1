# Install script by Lukas Bergman
# Created 2023-11-29
# Updated 2024-06-03

# Configuring chocolatey
ECHO Configuring chocolatey
choco feature enable -n allowGlobalConfirmation

# Apps
ECHO Installing apps
choco install powertoys
choco install obsidian
winget install GlazeWM
# choco install notepadplusplus -y
# choco install mattermost-desktop -y

# DEV
ECHO Installing dev tools
choco install jetbrains-rider
# choco install git.portable -y
# choco install nvm.portable -y
# choco install nodejs -y
# choco install ssms -y
# choco install dotnet-sdk -y
# choco install vscode -y

# Krångel med sql-server installation
## choco install sql-server-2022 -y

choco feature disable -n allowGlobalConfirmation

# Map explorer to network drive used for backups in UTV (requires reboot)
New-PSDrive -Name "Z" -PSProvider "FileSystem" -Root "\\TRV37205\Backup" -Persist
