################################################################################
### All Knowing, All Useful Website
###  http://zsh.sourceforge.net/Doc/
################################################################################

if [[ $+commands[stat] == 0 ]]; then
    # stat isn't available so we are probably screwed anyways.
    export ZSHRC_DIR=${HOME}/.zsh
else
    export ZSHRC_DIR=${$(stat -f "%R" ${(%):-%N})%/*}
fi

# All my plugins first
source "${ZSHRC_DIR}/plugins/plugins.zsh"

# Configs that should work everywhere
# This should enumerate them in the correct order
for f in ${ZSHRC_DIR}/rc/*; do
    source $f
done

# Configs specific to an operating system
SYSRC_DIR=${ZSHRC_DIR}/rc-sys
for f in ${SYSRC_DIR}/$(uname)/*(N); do
    source $f
done

# Configs specific to a machine, by hostname
HOSTRC_DIR=${ZSHRC_DIR}/rc-host
for f in ${HOSTRC_DIR}/${HOST}/*(N); do
    source $f
done
