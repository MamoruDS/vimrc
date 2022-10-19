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

SHA_PATH=$HOME/.config/nvim/current_sha
SHA=$(curl -s https://api.github.com/repos/MamoruDS/vimrc/commits/main | grep 'sha' | sed -r 's/^[^:]*:\ "(.*)",$/\1/' | head -1)
EXIST_SHA="unknown"
if [ -f $SHA_PATH ]; then
    EXIST_SHA=$(cat $SHA_PATH)
fi
echo "fetching: ${EXIST_SHA:0:7} -> ${SHA:0:7}"
if [ "$SHA" = "$EXIST_SHA" ]; then
    if ! [ "$INIT" = true ]; then
        echo "nothing to update, exiting..."
        exit 0
    fi
fi

if [ "$INIT" = true ]; then
    curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/init.vim > $_ROOT/init.vim 
fi

confs=(
    "cmds"
    "color"
    "plugconf_coc"
    "plugconf_gitgutter"
    "plugconf_lightline"
    "plugconf_nerdcommenter"
    "plugconf_nerdtree"
    "syn_json"
    "syn_py3"
    "syn_rust"
    "syn_toml"
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

echo $SHA > $SHA_PATH
echo 'done.'
