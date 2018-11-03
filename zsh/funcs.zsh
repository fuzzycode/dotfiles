# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
    local inst=$(brew search | fzf -m --header='[brew:install]')

    if [[ $inst ]]; then
        for prog in $(echo $inst);
        do; brew install $prog; done;
    fi
}

# Update (one or multiple) selected application(s)
# mnemonic [B]rew [U]pdate [P]lugin
bup() {
    local upd=$(brew outdated | fzf -m --header='[brew:update]')

    if [[ $upd ]]; then
        for prog in $(echo $upd);
        do; brew upgrade $prog; done;
    fi
}

# Delete (one or multiple) selected application(s)
# mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)
bcp() {
    local uninst=$(brew leaves | fzf -m --header='[brew:uninstall]')

    if [[ $uninst ]]; then
        for prog in $(echo $uninst);
        do; brew uninstall $prog; done;
    fi
}

cc() {
    local dir=$(fd --full-path ${1:-.} -t d --color never | fzf +m --header='[change directory]')
    cd "$dir"
}
