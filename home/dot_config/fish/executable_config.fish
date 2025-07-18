#!/usr/bin/env fish

set -Ux fisher_path ~/.local/share/fish

# Add homebrew directories to path
fish_add_path /opt/homebrew/bin/

# Add my custom git scripts to path
fish_add_path ~/.dotfiles/git/scripts

# Add doom bin folder to path
fish_add_path ~/.emacs.d/bin

#clear greeting message
set -U fish_greeting

set -x LANG en_US.UTF-8
set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x HOMEBREW_NO_ENV_HINTS 1
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CONFIG_HOME ~/.config
set -x EDITOR emacsclient

set -x FORGIT_NO_ALIASES 1

# Setup the interactive shell
if status is-interactive
    starship init fish | source

    # Abbreviations
    abbr --add la eza --long --all --icons=auto
    abbr --add ls eza
    abbr --add tree eza --tree
    abbr --add cdr cd-gitroot


    # Aliases
    alias c clear
    alias s "source $XDG_CONFIG_HOME/fish/config.fish"
    alias gs 'git status'
    alias gd 'git diff'
    alias gt 'git difftool'

    # Special aliases when running fish from vterm
    if test 'vterm' = "$INSIDE_EMACS"
        alias dired vd
    end
end

# Load fzf configuration
source ~/.dotfiles/fish/fzf.fish

# Load local config if it exists
if test -e ~/.config.local.fish
    source ~/.config.local.fish
end

# Created by `pipx` on 2025-02-19 20:56:57
set PATH $PATH /Users/bjornlarsson/.local/bin
