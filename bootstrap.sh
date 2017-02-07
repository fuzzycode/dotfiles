#!/usr/bin/env bash

if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Add all taps
brew tap homebrew/core
brew tap homebrew/emacs
brew tap homebrew/fuse
brew tap homebrew/services
brew tap homebrew/versions
brew tap railwaycat/emacsmacport
brew tap caskroom/fonts

#Install all packages
brew install ack
brew install aspell
brew install bash-completion
brew install cask
brew install sphinx-doc
brew install cmake
brew install ninja
brew install openssl
brew install sqlite
brew install python
brew install clang-format
brew install editorconfig
brew install fasd
brew install flake8
brew install gdb
brew install git
brew install git-extras
brew install git-flow
brew install global
brew install hunspell
brew install markdown
brew install node
brew install python3
brew install rtags
brew install the_silver_searcher
brew install ripgrep
brew install wget
brew install zsh
brew install homebrew/fuse/sshfs
brew install homebrew/emacs/tern -with-auto-complete
brew install railwaycat/emacsmacport/emacs-mac -with-spacemacs-icon
brew install hub

#Install all casks
brew cask install font-inconsolata
brew cask install font-inconsolata-for-powerline
brew cask install font-source-code-pro
