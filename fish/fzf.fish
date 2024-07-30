#!/usr/bin/env fish

set -x ZSH_FZF_HISTORY_SEARCH_EVENT_NUMBERS 0
set -x ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES 1
set -x ZSH_FZF_HISTORY_SEARCH_DATES_IN_SEARCH 0

set -x FZF_DEFAULT_OPTS "
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {2} | tr -d "\n" | pbcopy)+abort'
"

# Use fd to provide file and directory information
function _fzf_compgen_path
  fd --hidden --follow --exclude ".git" . "$1"
end

function _fzf_compgen_dir
  fd --type d --hidden --follow --exclude ".git" . "$1"
end

function frg -a query -d "Fuzzy search using FZF and Ripgrep"
    set -l RG_PREFIX "rg --column --line-number --no-heading --color=always --smart-case "

    set -q query[1]
    or set query ""

    command fzf --ansi --disabled --query "$query" \
        --bind "start:reload($RG_PREFIX {q})" \
        --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
        --prompt '1. ripgrep> ' \
        --delimiter : \
        --header 'CRTL-E: Edit'  \
        --preview 'bat --theme=Dracula --color=always {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
        --bind 'ctrl-e:become(emacsclient -n +{2} {1})' \
        --bind 'ctrl-y:execute-silent(echo {1} | tr -d "\n" | pbcopy)+abort'
end

if status is-interactive
    fzf --fish | source
end
