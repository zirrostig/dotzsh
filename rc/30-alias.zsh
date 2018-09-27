#!/bin/zsh

####################
# Aliases

alias ls='ls --color=auto'
alias ll='k'
alias la='k -a'
alias p=ls
alias pl=ll
alias pa=la
alias ka='k -a'
alias kd='k -d'
alias kf='k -n'
alias allcolors='(x=`tput op` y=`printf %80s`;for i in {0..255};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'
alias grep='grep --color=auto'
alias vimbt='(tabbed -d >${HOME}/.tabbed-vimb.xid); vimb --embed $(<${HOME}/.tabbed-vimb.xid)'

# Need to find a better place for this
# eval $(dircolors -b)
