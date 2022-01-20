#!/usr/bin/env bash

# Only run if running on osx where we have homebrew
if [[ "$(uname)" == "Darwin" ]]; then
    brew update

    # Add all taps
    brew tap homebrew/cask-fonts
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
    brew install direnv
    brew install git
    brew install git-extras
    brew install git-flow
    brew install git-imerge
    brew install gnuplot
    brew install graphviz
    brew install htop
    brew install hub
    brew install isync
    brew install llvm
    brew install libvterm
    brew install mailutils
    brew install markdown
    brew install mu --with-emacs
    brew install ninja
    brew install node
    brew install pandoc
    brew install plantuml
    brew install pngpaste
    brew install pre-commit
    brew install ripgrep
    brew install rust-analyzer
    brew install shellcheck
    brew install sphinx-doc
    brew install sqlite
    brew install terminal-notifier
    brew install texlab
    brew install trash
    brew intsall tree
    brew install wget
    brew install zsh

    #Install all casks
    brew install --cask font-ibm-plex
    brew install --cask font-juliamono
    brew install --cask font-overpass
    brew install --cask font-jetbrains-mono
    brew install --cask font-inconsolata
fi
