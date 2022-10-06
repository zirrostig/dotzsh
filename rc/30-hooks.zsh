#!/bin/zsh

# Change urxvt's title to the (soon to be) running command
function _urxvt_title_exec {
    #   Look at adding truncation (for very long commands) to this later
    if [[ "$TERM" == "rxvt-unicode-256color" ]]; then
        #my_lastcmd=${1[(wr)^(*=*|sudo|-*)]}
        printf '\33]2;%s\007' "- $1"
    fi
}

# Change urxvt's title to be the current directory to 2 dirs
function _urxvt_title_pwd {
    if [[ "$TERM" == "rxvt-unicode-256color" ]]; then
        local dir=${(%):-%2/}
        printf '\33]2;%s\007' "$dir"
    fi
}

# Add them all as hooks
add-zsh-hook chpwd _urxvt_title_pwd
add-zsh-hook precmd _urxvt_title_pwd
add-zsh-hook preexec _urxvt_title_exec
