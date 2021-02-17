#!/bin/bash

_CUSTOM="$HOME/.config/nvim/custom"

confs=(
    "cmds"
    "color"
    "plugconf_coc"
    "plugconf_gitgutter"
    "plugconf_nerdtree"
    "syn_json"
    "syn_typescript"
    "syn_vim"
)

for conf in "${confs[@]}"; do
    curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
done
