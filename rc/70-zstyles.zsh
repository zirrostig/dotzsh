#!/bin/zsh

# Always menu
zstyle ':completion:*:*:*:*:*' menu select

# Auto rehashing
zstyle ":completion:*" rehash yes

# Case insensitive cd
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# cdr
zstyle ':completion:*:*:cdr:*:*' menu selection
zstyle ':chpwd:*' recent-dirs-prune parent

# mupdf
zstyle ':completion:*:*:mupdf:*:*' file-patterns '*.pdf' '*(-/):directories'

# SSH config hosts
if [ -f ~/.ssh/known_hosts ]; then
    hosts=(`awk '{print $1}' ~/.ssh/known_hosts | tr ',' '\n' `)
fi
if [ -f ~/.ssh/config ]; then
    hosts=($hosts `grep '^Host' ~/.ssh/config | sed 's/Host\ //' | egrep -v '^\*$'`)
fi
if [ "$hosts" ]; then
    zstyle ':completion:*:hosts' hosts $hosts
fi

# Completion menu with color
zmodload zsh/complist
export ZLSCOLORS="${LS_COLORS}"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" "ma=${${use_256color+1;7;38;5;143}:-1;7;33}"
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# Kill zstyles completion
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Pacaur
zstyle ':completion:*:pacaur:*' remote-access false

# Fuzzy completion
# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
# zstyle ':completion:*:path-files:*' matcher-list '' \
#     'm:{a-z\-}={A-Z\_}' \
#     'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
#     'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'
# 
# # Recursive completion of files in my source directories
# zstyle ':completion:*' recursive-files "${HOME}/sob/*"

# Enable cache of completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ${HOME}/.zsh_cache
