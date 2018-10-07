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
brew tap caskroom/fonts
brew tap universal-ctags/universal-ctags
brew tap d12frosted/emacs-plus

#Install all packages
brew install ack
brew install aspell
brew install bash-completion
brew install cask
brew install clang-format
brew install cmake
brew install editorconfig
brew install emacs-plus --with-natural-title-bars
brew install fasd
brew install flake8
brew install gdb
brew install git
brew install git-extras
brew install git-flow
brew install git-imerge
brew install --HEAD universal-ctags
brew install global --with-ctags --with-pygments
brew install homebrew/fuse/sshfs
brew install hub
brew install hunspell
brew install markdown
brew install ninja
brew install node
brew install openssl
brew install python
brew install python3
brew install ripgrep
brew install rtags
brew install sphinx-doc
brew install sqlite
brew install the_silver_searcher
brew install trash
brew install wget
brew install zsh
brew install tern
brew install cquery --HEAD
brew install bat
brew install fd

# Link apps
brew linkapps emacs-plus

#Install all casks
brew cask install font-inconsolata
brew cask install font-inconsolata-for-powerline
brew cask install font-source-code-pro
