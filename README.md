<div align="center">
  
# Guide to setting up your dev environment
</div>

> **Note:** Keybindings for windows coming later

## Tools
- Windows Terminal / iTerm
- Chocolatey / HomeBrew
- [Git](https://git-scm.com/downloads)
- [NPM/Node](https://nodejs.org/en/download)
- [Visual Studio](https://visualstudio.microsoft.com/downloads/)
- [VS Code](https://code.visualstudio.com/Download)
  - Settings Sync (github login)
- [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
- SQL Server (incl. localhost)
- [.NET SDK](https://dotnet.microsoft.com/en-us/download) (for VS Code to work with C#)


## Windows trv setup
### Installationsskript
- Öppna powershell som admin och kör nedan kommando
```
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
- Kör sedan följande kommando i powershell för att installera chocolatey (godkänt av ALM och möjliggör installation av program & bibliotek via powershell)

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://proget.trafikverket.local/endpoints/ChocolateyInstall/content/install.ps1'))
```
- Kör följande kommando för automatiskt installation av diverse utvecklarverktyg och bibliotek
```
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
```

### Justeringar efter installation
Visual Studio keybindings:
Tools -> Options -> Environment -> Keyboard
- CTRL+D
  - Unbind `Edit.Duplicate` (`CTRL+D`)
  - Bind `Edit.InsertNextMatchingCaret` to `CTRL+D`
- F2
  - Bind `Refactor.Rename` to `F2`

## Mac setup
- Open Terminal and run `xcode-select --install`
- Download and run the [brew-install-script.sh](https://github.com/lukasbergman/dev-setup/blob/main/brew-install-script.sh) by running
```
chmod +x ./brew-install-script.sh

./brew-install-script.sh
```
- Install Magnet?
- Web browser extensions
  - uBlock Origin
  - React Developer Tools
  - 1Password - Password Manager
  - Dark Reader?

### Post app install
- Open and log in to 1Password
- Log in to browser to sync settings, extensions etc
- Log in to github in vscode to sync everything
- Download [karabiner elements config file](https://github.com/lukasbergman/dev-setup/blob/main/karabiner.json), and go to `Misc -> Export & Import -> Open config folder`, and paste in karabiner.json

### Todo
- Add things3 brew install?
