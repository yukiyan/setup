#!/bin/sh

# ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
echo "brew updating..."

brew update
outdated=`brew outdated`

if [ -n "$outdated" ]; then
  cat << EOF

The following package(s) will upgrade.

$outdated

Are you sure?
If you do not want to upgrade, please type Ctrl-c now.
EOF

  read dummy

  brew upgrade
fi

# Add Repository
brew tap homebrew/binary

# Memo:
# readline:   for Ruby

brew install git
brew install go
brew install hub
brew install jq
brew install pkg-config
brew install postgresql
brew install readline
brew install tree
brew install zsh

brew install caskroom/cask/brew-cask
brew cask install appcleaner
brew cask install dropbox
brew cask install flash
brew cask install google-chrome --caskroom=/Applications
brew cask install google-drive
brew cask install google-japanese-ime
brew cask install karabiner
brew cask install licecap
brew cask install silverlight
brew cask install vagrant
brew cask install virtualbox
brew cask install iterm2
brew cask install alfred
brew cask install simplecap
brew cask install imageoptim
brew cask install skitch
brew cask install mplayerx