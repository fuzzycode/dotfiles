#!/usr/bin/env fish

set -Ux fisher_path ~/.local/share/fish

# Add homebrew directories to path
fish_add_path /opt/homebrew/bin/

# Set locale
set -x LANG en_US.UTF-8
#clear greeting message
set -U fish_greeting

set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x HOMEBREW_NO_ENV_HINTS 1


# Setup the interactive shell
if status is-interactive
    starship init fish | source

    # Abbreviations
    abbr --add la exa --long --all --git
    abbr --add ls exa
    abbr --add tree exa --tree
    abbr --add cdr cd-gitroot
end

# Load local config if it exists
if test -e ~/.config.local.fish
    source ~/.config.local.fish
end
