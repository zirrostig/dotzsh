#!/bin/zsh

# Must source (.) the output of this function for it to work
default_export() {
    local var=$1
    local cmd
    shift 1

    for cmd in "$@"; do
        if (( $+commands[$cmd] )); then
            break
        fi
    done

    # If the loop finished, cmd will still be set, so the last argument acts as the default if nothing was found
    printf 'export %s="%s"\n' $var $cmd
}

. <(default_export EDITOR nvim vim)
. <(default_export BROWSER vimb firefox)

export WINEARCH="win64"
export READNULLCMD="less"
