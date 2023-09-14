#!/bin/bash

# Set to exit if error occurs
set -e

echo "Beginning Duke Robotics Software Install..."

# if homebrew is not installed, install homebrew
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed, installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install docker
brew install git
brew install --cask github
brew install --cask slack
brew install python@3.11
brew install --cask xquartz

# if user wants to install vscode, install vscode
read -p "Do you want to install vscode? (y/n): " install_vscode
if [ "$install_vscode" = "y" ]; then
    brew install --cask visual-studio-code
fi
