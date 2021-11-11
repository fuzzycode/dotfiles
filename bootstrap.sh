#!/usr/bin/env bash

if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Add all taps
brew tap caskroom/fonts
brew tap d12frosted/emacs-plus

#Install all packages
brew install ack
brew install bash-completion
brew install bat
brew install clang-format
brew install cmake
brew install coreutils
brew install cppcheck
brew install editorconfig
brew install enchant
brew install fasd
brew install fd
brew install flake8
brew install fzf
brew install git
brew install git-extras
brew install git-flow
brew install git-imerge
brew install graphviz
brew install htop
brew install hub
brew install llvm
brew install mailutils
brew install markdown
brew install mu --with-emacs
brew install ninja
brew install node
brew install pandoc
brew install plantuml
brew install ripgrep
brew install sphinx-doc
brew install sqlite
brew install terminal-notifier
brew install trash
brew intsall tree
brew install wget
brew install zsh

#Install all casks
brew cask install font-inconsolata
brew cask install font-inconsolata-for-powerline
brew cask install font-source-code-pro
