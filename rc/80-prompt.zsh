#!/bin/zsh

# AGKOZAK prompt config
AGKOZAK_SHOW_VIRTUALENV=0 # Disable virtual env detection

# Job count
AGKOZAK_CUSTOM_PROMPT='%(1j.%B%F{blue}[%j]%f%b .)'
# Exit status
AGKOZAK_CUSTOM_PROMPT+='%(?..%B%F{red}(%?%)%f%b )'
# Command execution time
AGKOZAK_CUSTOM_PROMPT+='%(9V.%9v .)'
# Username and hostname
AGKOZAK_CUSTOM_PROMPT+='%(!.%S%B.%B%F{green})%n%1v%(!.%b%s.%f%b) '
# Path
AGKOZAK_CUSTOM_PROMPT+=$'%B%F{blue}%2v%f%b\n'
# Prompt character
AGKOZAK_CUSTOM_PROMPT+='%(4V.:.%#) '

# Git status
AGKOZAK_CUSTOM_RPROMPT='%(3V.%F{yellow}%3v%f.)'
