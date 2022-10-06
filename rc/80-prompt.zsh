#!/bin/zsh

# TODO: Convert this file to a function that is loaded by promptinit

setopt PROMPT_SUBST
setopt PROMPT_BANG
setopt PROMPT_PERCENT
setopt TRANSIENT_RPROMPT

autoload -U colors && colors

### Setup execution timing -- psvar[1]
# make timing more accurate
typeset -F SECONDS
function _cmd_timer_preexec {
    cmd_timer=$SECONDS
}
function _cmd_timer_precmd {
    if [[ -n $cmd_timer ]]; then
        local timediff
        printf -v timediff "%0.1f" $((SECONDS - cmd_timer))
        if (( timediff > 1 )); then
            # psvar[1]=$(date -u -d @${timediff} +"%T")
            psvar[1]=$timediff
        else
            psvar[1]=""
        fi
    else
        psvar[1]=""
    fi
    unset cmd_timer
}
add-zsh-hook preexec _cmd_timer_preexec
add-zsh-hook precmd _cmd_timer_precmd

### Setup version control checks
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info

# disable everything except git
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' actionformats '%u%c %b|%a'
zstyle ':vcs_info:*' formats '%u%c %b'


### Build the prompt

## First Line
# Job count
PROMPT='%(1j.%B%F{blue}[%j]%f%b .)'
# Exit status
PROMPT+='%(?..%B%F{red}(%?%)%f%b )'
# Command execution time
PROMPT+='%(1V.%B%F{blue}%1v%f%b .)'
# Username
PROMPT+='%(!.%S%B.%B%F{green})%n%(!.%b%s.%f%b) '
# Path (TODO: make some nice shorten-er for this)
PROMPT+=$'%B%F{blue}%4~%f%b\n'

## Second line
# Prompt character
PROMPT+='%# '

# Git status
RPROMPT='%F{yellow}${vcs_info_msg_0_}%f'
