#!/bin/zsh

# Completion
autoload -U compinit 

# Emacs bindings
bindkey -e

autoload -U tetris && zle -N tetris   #Because we can
bindkey "\C-x\C-t" tetris
autoload -U tetriscurses

# Bash like command line edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# Make backward kill word kill to '/' also instead of just whitespace
autoload -U select-word-style
select-word-style bash

# Awesome bulk mv command
autoload -U zmv

# Setup cdr
autoload -U add-zsh-hook
autoload -U cdr
autoload -U chpwd_recent_dirs
add-zsh-hook chpwd chpwd_recent_dirs

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

