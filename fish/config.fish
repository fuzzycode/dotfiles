#!/usr/bin/env fish

set -Ux fisher_path ~/.local/share/fish

# Add homebrew directories to path
fish_add_path /opt/homebrew/bin/

# Add my custom git scripts to path
fish_add_path ~/.dotfiles/git/scripts

#clear greeting message
set -U fish_greeting

set -x LANG en_US.UTF-8
set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x HOMEBREW_NO_ENV_HINTS 1
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CONFIG_HOME ~/.config
set -x EDITOR emacsclient

# Setup the interactive shell
if status is-interactive
    starship init fish | source

    # Abbreviations
    abbr --add la exa --long --all --icons
    abbr --add ls exa
    abbr --add tree exa --tree
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


    # FZF config
    set fzf_history_opts --with-nth=4.. # Remove date/time display

end

# Load local config if it exists
if test -e ~/.config.local.fish
    source ~/.config.local.fish
end
