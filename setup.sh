#!/bin/bash

# Copy zsh config into home folder
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc
cp .zlogin ~/.zlogin

# Copy git config into home folder
cp .gitconfig ~/.gitconfig

# Setup Homebrew and install frequently used brews
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install carthage
brew install pngquant
brew install rbenv
brew install awscli

# Setup Ruby and install frequently used gems
rbenv install 2.6.3
rbenv global 2.6.3
~/.rbenv/shims/gem install bundler
~/.rbenv/shims/gem install xcode-install
~/.rbenv/shims/gem install iStats

# Disable icon bounce in Dock
defaults write com.apple.dock no-bouncing -bool TRUE

# Show full path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# Limit Spotify cache size to 1GB
echo 'storage.size=1024' >> ~/Library/Application\ Support/Spotify/prefs

# Set Sublime preferences
cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Restart apps
killall Dock
killall Finder
killall Xcode
killall Spotify
