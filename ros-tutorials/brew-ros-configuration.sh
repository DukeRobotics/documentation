#!/bin/sh

# This script will install the following applications:
# - brew
# - Docker Desktop
# - Git
# - GitHub Desktop
# - kitty
# - Slack
# - Python3
# - Tabby
# The script also gives the option to install VS Code.

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Docker Desktop
brew install --cask docker

# Install Git
brew install git

# Install GitHub Desktop
brew install --cask github

# Install kitty
brew install --cask kitty

# Install Slack
brew install --cask slack

# Install Python3
brew install python3

# Install Tabby
brew install --cask tabby

# Install VS Code
echo "Do you want to install VS Code? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    brew install --cask visual-studio-code
else
    echo "VS Code not installed"
fi
