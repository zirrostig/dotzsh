#!/bin/zsh

#Executed before the prompt is displayed
function precmd {
    if [[ "$TERM" == "rxvt-unicode-256color" ]]; then
        printf '\33]2;%% %s\007' "$PWD"
    fi
}

#Executed before the command is executed, after the enter key is pressed
function preexec {
    #Change urxvt's title to the (soon to be) running command
    #   Look at adding truncation (for very long commands) to this later
    if [[ "$TERM" == "rxvt-unicode-256color" ]]; then
        #my_lastcmd=${1[(wr)^(*=*|sudo|-*)]}
        printf '\33]2;%s\007' "- $1"
    fi
}

#Executed whenever I change directories
function chpwd {
    #Change urxvt's title to be the current directory to 2 dirs
    if [[ "$TERM" == "rxvt-unicode-256color" ]]; then
        local dir=${(%):-%2/}
        printf '\33]2;%s\007' "% $dir"
    fi
}
