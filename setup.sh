#!/bin/bash

# Copy zsh config into home folder
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc
cp .zlogin ~/.zlogin

# Copy ssh config into home folder
cp ssh-config ~/.ssh/config

# Copy git config into home folder
cp .gitconfig ~/.gitconfig

# Setup Homebrew and install frequently used brews
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install pngquant
brew install rbenv

# Setup Ruby and install frequently used gems
rbenv install 3.2.2
rbenv global 3.2.2
~/.rbenv/shims/gem install twine

# Disable icon bounce in Dock
defaults write com.apple.dock no-bouncing -bool TRUE

# Show full path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# Enable Xcode to use system SSH for downloading private Swift Packages
defaults write com.apple.dt.Xcode IDEPackageSupportUseBuiltinSCM YES

# Limit Spotify cache size to 1GB
echo 'storage.size=1024' >> ~/Library/Application\ Support/Spotify/prefs

# Set Sublime preferences
cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings

# Restart apps
killall Dock
killall Finder
killall Xcode
killall Spotify
