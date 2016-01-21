#!/bin/zsh

#Settings
setopt PROMPT_SUBST             #Allows variable expansion in the prompt string
setopt PROMPT_BANG              #Replace ! (bang) with history event number
setopt PROMPT_PERCENT           #% treated special
setopt TRANSIENT_RPROMPT        #Used when accepting commands from copy/paste

#Load some stuff up
autoload -Uz vcs_info
autoload -U promptinit
autoload -U colors && colors

export PROMPT="%n@%m:%4/ %# "
