#!/bin/zsh

_dark_mode() {
    # AppleInterfaceStyle only exists when the OS is set to dark mode
    val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
    if [[ $val == "Dark" ]]; then
        toggle_profile
    fi
}

toggle_profile() {
    if [[ $ITERM_PROFILE == "Light" ]]; then
        echo -ne "\033]50;SetProfile=Dark\a"
        export ITERM_PROFILE="Dark"
    else
        echo -ne "\033]50;SetProfile=Light\a"
        export ITERM_PROFILE="Light"
    fi
}
alias tp=toggle_profile

_dark_mode
