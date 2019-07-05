################################################################################
### All Knowing, All Useful Website
###  http://zsh.sourceforge.net/Doc/
################################################################################

if [[ "$(uname)" =~ "Linux|Darwin" ]]; then
    if [[ $+commands[readlink] != 0 ]]; then
        export ZSHRC_DIR=${$(readlink ${(%):-%N})%/*}
    fi
elif [[ "$(uname)" == "FreeBSD" ]]; then
    if [[ $+commands[stat] != 0 ]]; then
        export ZSHRC_DIR=${$(stat -f "%R" ${(%):-%N})%/*}
    fi
fi

if [[ -z "$ZSHRC_DIR" ]]; then
    # Don't have stat ?! What OS is it?
    export ZSHRC_DIR=${HOME}/.zsh
fi

# Configs that should work everywhere
# This should enumerate them in the correct order
for f in ${ZSHRC_DIR}/rc/*(N); do
    source $f
done

# Configs specific to an operating system
SYSRC_DIR=${ZSHRC_DIR}/rc-sys
for f in ${SYSRC_DIR}/$(uname)/*(N); do
    source $f
done

# Configs specific to a machine, by hostname
HOSTRC_DIR=${ZSHRC_DIR}/rc-host
for f in ${HOSTRC_DIR}/${HOST%%\.*}/*(N); do
    source $f
done
