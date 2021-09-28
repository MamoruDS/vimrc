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
conf="plugconf_nerdcommenter"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="plugconf_nerdtree"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_json"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_py3"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_rust"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_typescript"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
conf="syn_vim"
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim

echo $SHA > $SHA_PATH
echo 'done.'
