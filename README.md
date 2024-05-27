<div align="center">
  
# Guide to setting up your dev environment
</div>

> **Note:** Keybindings for windows coming later

## Tools
- Windows Terminal / iTerm
- Chocolatey / HomeBrew
- [Git](https://git-scm.com/downloads)
- [NPM/Node](https://nodejs.org/en/download)
- Dotnet IDE
  - [Visual Studio](https://visualstudio.microsoft.com/downloads/)
  - JetBrains Rider
- [VS Code](https://code.visualstudio.com/Download)
  - Settings Sync (github login)
- Database manager
  - [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
  - JetBrains DataGrip
- SQL Server (incl. localhost)
- [.NET SDK](https://dotnet.microsoft.com/en-us/download) (for VS Code to work with C#)

## Applications and 
- Obsidian
- Vimium extension / QuteBrowser (vim supported browser)
- GlazeVM (Windows Tiling Manager, like i3wm.org)

## Terminal setup and packages
- Windows terminal
- Zsh
- Tmux (handle multiple terminal windows)
- Zoxide (better cd navigation)
- Fzf (better find/search of files)
- Ranger (vim inspired file manager)?
- Azure Devops CLI (create PR's and more from the terminal)
- Gping (ping but with a graph)



## Windows trv setup
### Installscript
Run the dev install script from the intranet


### Post install adjustments
Visual Studio settings:
Tools -> Options -> Text Editor -> Code Cleanup -> Run Code Cleanup profile on Save

Visual Studio keybindings:
Tools -> Options -> Environment -> Keyboard
- CTRL+D
  - Unbind `Edit.Duplicate` (`CTRL+D`)
  - Bind `Edit.InsertNextMatchingCaret` to `CTRL+D`
- F2
  - Bind `Refactor.Rename` to `F2`
- CTRL+S
  - Unbind `File.SaveSelectedItems` (`CTRL+SHIFT+S`)
  - Bind `File.SaveAll` to `CTRL+S`
- CTRL+' (kommentera rad likt vscode)
  - Unbind `Tools.GoToCommandLine` (`CTRL+'`)
  - Bind `Edit.CommentSelection`
  - Bind `Edit.UncommentSelection`
- CTRL+P
  - Unbind `File.Print`
  - Bind `Edit.GoToAll`
- CTRL+SHIFT+P
  - Unbind `CodeReview.EditLocalFile`
  - Bind `Window.QuickLaunch`




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
