#!/bin/zsh

GPG_TTY=$(/usr/bin/tty)
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/.gnupg/S.gpg-agent.ssh"

export GPG_TTY SSH_AUTH_SOCK
gpgconf --launch gpg-agent

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
