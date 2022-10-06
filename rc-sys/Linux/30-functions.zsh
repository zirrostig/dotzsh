#!/bin/zsh

# Toggle terminal theme via xrdb
tp() {
    if [[ "$TERM_PROFILE" == "Light" ]]; then
        xrdb ~/.Xresources
    else
        xrdb ~/.Xresources
        xrdb -merge ~/.Xresources.light
    fi
}
