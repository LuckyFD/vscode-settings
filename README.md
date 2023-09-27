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


## Mac setup
- Open Terminal and run `xcode-select --install`
- Install Magnet?
- Firefox extensions
  - uBlock Origin
  - Dark Reader?
  - React Developer Tools
  - 1Password - Password Manager
 
### Todo
- Vscode settings?
- Karabiner elements setup?
- BetterTouchTool setup?

## Mac install script
```
# installing homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# installing packages
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
brew install git
brew install --cask dotnet-sdk
# ...

# installing dev applications
brew install --cask iterm2
brew install --cask visual-studio-code
# ...

# installing other applications
brew install --cask 1password
brew install --cask alfred
brew install --cask bartender
brew install --cask bettertouchtool
brew install --cask firefox
brew install --cask karabiner-elements
brew install --cask linearmouse
-- brew install --cask logi-options-plus
brew install --cask popclip
brew install --cask slack
brew install --cask google-drive
-- brew install onedrive
# ...
```
