#!/bin/sh

_CUSTOM="$HOME/.config/nvim/custom"

conf="color"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="cmds"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="plugconf_coc"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="plugconf_gitgutter"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="plugconf_nerdtree"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_json"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_typescript"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_vim"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
