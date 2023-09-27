#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Adding brew to path"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/lucky/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

# Dev Tools
echo "Installing development tools..."
brew install git
brew install docker
brew install --cask github
brew install --cask iterm2
brew install --cask dotnet-sdk
brew install --cask visual-studio-code

# Web Tools
echo "Installing web tools..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
brew install node
brew install --cask firefox
brew install --cask google-chrome

# Communication Apps
echo "Installing communication apps..."
brew install --cask slack

# File Storage
echo "Installing file storage tools..."
brew install --cask google-drive
-- brew install --cask onedrive

# Other
echo "Installing everything else..."
brew install --cask 1password
brew install --cask alfred
brew install --cask bartender
brew install --cask bettertouchtool
brew install --cask karabiner-elements
brew install --cask linearmouse
brew install --cask popclip
-- brew install --cask logi-options-plus
