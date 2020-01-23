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

zshrc() {
    $EDITOR $ZSHRC_DIR/$1
}

svn-diff() {
    svn diff "$1" | highlight -O ansi -S diff
}

task() {
    pushd
    taskell
    popd
}

compinit-cached() {
    # From this gist. https://gist.github.com/ctechols/ca1035271ad134841284
    #
    # On slow systems, checking the cached .zcompdump file to see if it must be 
    # regenerated adds a noticable delay to zsh startup.  This little hack restricts 
    # it to once a day.  It should be pasted into your own completion file.
    #
    # The globbing is a little complicated here:
    # - '#q' is an explicit glob qualifier that makes globbing work within zsh's [[ ]] construct.
    # - 'N' makes the glob pattern evaluate to nothing when it doesn't match (rather than throw a globbing error)
    # - '.' matches "regular files"
    # - 'mh+24' matches files (or directories or whatever) that are older than 24 hours.
    if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
        compinit
    else
        compinit -C
    fi
}
