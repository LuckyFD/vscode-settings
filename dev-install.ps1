# Install script for Lukas Bergman
# Created 2023-11-29

ECHO Installing apps

# Configuration of chocolatey
ECHO Configure chocolatey
choco feature enable -n allowGlobalConfirmation
choco source add -n=trv -s="https://proget.trafikverket.local/nuget/Chocolatey/"

# DEV
choco install git.portable -y
choco install nvm.portable -y
nvm install lts -y
choco install vscode -y
choco install visualstudio2022community -y
choco install SqlServerLocalDb -y
choco install ssms -y
choco install dotnet-sdk -y
choco install notepadplusplus


choco feature disable -n allowGlobalConfirmation
