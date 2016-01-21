#!/bin/zsh

# Taken from https://wiki.archlinux.org/index.php/Core_utilities
pty() {
    zpty pty-${UID} ${1+"$@"}
    if [[ ! -t 1 ]];then
        setopt local_traps
        trap '' INT
    fi
    zpty -r pty-${UID}
    zpty -d pty-${UID}
}

ptyless() {
    pty $@ | less
}

# Make emacs be disowned
em() {
    emacs "$@" &|
}

# More messing with less, make man pages pretty
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
compdef _man man

zshrc() {
    $EDITOR $ZSHRC_DIR/$1
}
