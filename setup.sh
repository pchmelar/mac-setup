#!/bin/bash

# Copy zsh config into home folder
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc
cp .zlogin ~/.zlogin

# Disable icon bounce in Dock
defaults write com.apple.dock no-bouncing -bool TRUE

# Show full path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# Restart apps
killall Dock
killall Finder
