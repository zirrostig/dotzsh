#!/bin/zsh
# TO BE SOURCED FROM $HOME/.zshrc

###############################################################################
# Lets try out vim mode
###############################################################################
source ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}


export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # More important for if I switch back to emacs mode
bindkey -v
export KEYTIMEOUT=1     #Removes bad lag when switching to NORMAL


#Some keybindings
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '[3~' delete-char            #Forward Delete Key
# bindkey '^r' history-incremental-search-backward   #^r now works - history search
bindkey -a / history-incremental-search-backward
bindkey '^[l' push-line

################################################################################
### Aliases
################################################################################
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias p=ls
alias pl=ll
alias pa=la
alias ka='k -a'
alias kd='k -d'
alias kf='k -n'
alias hexedit='vim +Vinarise'
alias allcolors='(x=`tput op` y=`printf %80s`;for i in {0..255};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'
alias grep='grep --color=auto'
if [[ "$TERM" != "linux" ]]; then
    alias killFlash='~/.killFlash.sh'
    alias makeJavaWindowsWork='wmname LG3D'
    # alias vim=gvim
fi

# Make ls colors better
eval $(dircolors -b)
