#!/bin/zsh

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS="-R"
export PAGER="less"

# rootless docker -- Do not use
# export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Until I fix the BS below (stopped working in an rxvt update
export TERM_PROFILE=Light

# _is_light_theme() {
#     local oldstty
#     local answer
#     local result

#     # Adopted from https://stackoverflow.com/questions/2507337/how-to-determine-a-terminals-background-color
#     oldstty=$(stty -g)
#     stty raw -echo min 0 time 0
#     printf "\033]11;?\033\\"
#     # xterm needs the sleep (or "time 1", but that is 1/10th second).
#     sleep 0.00000001
#     read -r answer
#     result=${answer#*;}
#     stty $oldstty

#     # Parse the result into component parts so we can calculate luminance
#     local red
#     local green
#     local blue
#     local lum
#     echo $result | sed 's|^.*rgb:\([0-9a-f]*\)/.*$|\1|' | sed 's|^\(..\).*$|0x\1|' | read -r red
#     echo $result | sed 's|^.*rgb:[^/]*/\([0-9a-f]*\)/.*$|\1|' | sed 's|^\(..\).*$|0x\1|' | read -r green
#     echo $result | sed 's|^.*rgb:[^/]*/[^/]*/\([0-9a-f]*\).*$|\1|' | sed 's|^\(..\).*$|0x\1|' | read -r blue


#     # Calculate luminance, 255 is brightest white, 0 is darkest black
#     (( lum = 0.2126 * red + 0.7152 * green + 0.0722 * blue ))
#     # Arbitrary point of 170 for considering it a "light" theme
#     (( dark = lum < 170 ))
#     return $dark
# }

# if _is_light_theme; then
#     export TERM_PROFILE=Light
# else
#     export TERM_PROFILE=Dark
# fi
