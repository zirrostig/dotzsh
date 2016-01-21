#!/bin/zsh

#Replaces ... -> ../.. on the fly
function rationalise-dot {
    if [[ $LBUFFER = *..  ]]; then
        LBUFFER+=/..
    else
        LBUFFER+=.
    fi
}
zle -N rationalise-dot
bindkey . rationalise-dot
bindkey -s '`' '~/'
