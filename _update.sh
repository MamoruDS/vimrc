#!/bin/sh

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

conf="coc_extensions"
if [ ! -f "${_CUSTOM}/${conf}.vim" ]; then
    curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
fi

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
