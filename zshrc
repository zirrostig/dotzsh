################################################################################
### All Knowing, All Useful Website
###  http://zsh.sourceforge.net/Doc/
################################################################################

for f in $HOME/.zsh/rc/*; do
    source $f
done

if [[ -o login ]]; then
    systemctl --user import-environment PATH
fi
