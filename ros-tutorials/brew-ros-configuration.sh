#!/bin/bash

# if available disk space less than 25GB, exit and print error message
if [ $(df -H | grep -m1 -o '[0-9]\+G' | tr -d G) -lt 25 ]; then
    echo "Error: Available disk space less than 25GB"
    exit 1
fi

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

