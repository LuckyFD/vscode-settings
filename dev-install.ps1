# Install script for Lukas Bergman
# Created 2023-11-29

ECHO Installing apps

# Configuration of chocolatey
ECHO Configure chocolatey
choco feature enable -n allowGlobalConfirmation
choco source add -n=trv -s="https://proget.trafikverket.local/nuget/Chocolatey/"

# Apps
choco install 1password -y
choco install notepadplusplus -y

# DEV
choco install git.portable -y
choco install nvm.portable -y
choco install nodejs -y
choco install SqlServerLocalDb -y
choco install ssms -y
choco install dotnet-sdk -y
choco install vscode -y
choco install visualstudio2022community -y

# Post install
refreshenv
#notworking: nvm install lts -y
git config --global user.name "Lukas Bergman"
git config --global user.email lukas.bergman@trafikverket.se
git config --global default.push simple
git config --global credential.helper wincred

git config --global push.default current
git config --global http.proxy http://proxyn.trafikverket.local:8080
npm config set registry "https://proget.trafikverket.local/npm/DefaultNpm/"
npm config set registry -g "https://proget.trafikverket.local/npm/DefaultNpm/"


choco feature disable -n allowGlobalConfirmation
