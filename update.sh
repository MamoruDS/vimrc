#!/bin/bash

_ROOT="$HOME/.config/nvim"
_CUSTOM="$_ROOT/custom"

INIT=false
for i in "$@"; do
    case $i in
    --init)
        INIT=true
        ;;
    esac
done

if [ "$INIT" = true ]; then
    curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/init.vim > $_ROOT/init.vim 
fi

confs=(
    "cmds"
    "color"
    "plugconf_coc"
    "plugconf_gitgutter"
    "plugconf_nerdtree"
    "plugconf_nerdcommenter"
    "syn_json"
    "syn_py3"
    "syn_rust"
    "syn_typescript"
    "syn_vim"
)

_F="coc_extensions"
if [ ! -f "${_CUSTOM}/${_F}.vim" ]; then
    confs+=($_F)
fi

for conf in "${confs[@]}"; do
    curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
done
