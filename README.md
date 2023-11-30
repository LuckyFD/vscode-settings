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
- Öppna powershell som admin och kör `Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://proget.trafikverket.local/endpoints/ChocolateyInstall/content/install.ps1'))`
- `@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://github.com/lukasbergman/dev-setup/blob/48106882e3894c0e816fd115bc4033cfaab91594/dev-install.ps1'))"`


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
