#!/bin/zsh

### Make it easy to add directory aliases
add-dir-alias() {
    hash -d $1=$PWD
    mkdir -p ${ZSHRC_DIR}/rc-host/${HOST}
    echo "hash -d $1=$PWD" >> ${ZSHRC_DIR}/rc-host/${HOST}/30-alias.zsh
}

####################
# Normal Aliases
alias ll='k --no-vcs'
alias la='k --no-vcs -a'
alias p=ls
alias pl=ll
alias pa=la
alias ka='k -a'
alias kd='k -d'
alias kf='k -n'
alias allcolors='(x=`tput op` y=`printf %80s`;for i in {0..255};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'
alias grep='grep --color=auto'

if (( $+commands[hub] )); then
    alias git=hub
fi

###################
# Global Aliases
if (($+commands[jq] )); then
    alias -g JQ='| jq ''.'''
    alias -g JQQ='| jq '
fi

# Need to find a better place for this
# eval $(dircolors -b)
