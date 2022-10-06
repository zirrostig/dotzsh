#!/bin/zsh

# Enable hooking existing functions
autoload -Uz add-zsh-hook

# Completion
autoload bashcompinit
bashcompinit
autoload -U compinit

# Emacs bindings
bindkey -e

# Bash like command line edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# Awesome bulk mv command
autoload -U zmv

# Setup cdr
autoload -Uz cdr chpwd_recent_dirs
add-zsh-hook chpwd chpwd_recent_dirs
add-zsh-hook -Uz zsh_directory_name zsh_directory_name_cdr

################################################################################
### Zsh Modules
################################################################################
# zmodload zsh/attr
zmodload zsh/clone
zmodload zsh/datetime
# zmodload zsh/db/gdbm
zmodload zsh/deltochar
zmodload zsh/files
zmodload zsh/mapfile
zmodload zsh/mathfunc
zmodload zsh/pcre
zmodload zsh/regex
zmodload zsh/sched
zmodload zsh/net/socket
zmodload zsh/net/tcp
zmodload zsh/stat
zmodload zsh/system
zmodload zsh/termcap
zmodload zsh/terminfo
zmodload zsh/zftp
zmodload zsh/zpty
zmodload zsh/zselect

