#!/bin/sh

# neovim check
if ! [ -x "$(command -v nvim)" ]; then
    echo 'Error: nvim is not installed' >&2
    exit 1
fi

# node check
if ! [ -x "$(command -v node)" ]; then
    echo 'Error: nodejs is not installed' >&2
    exit 1
fi

# install MamoruDS/vimrc
# curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/MamoruDS/vimrc/main/install.sh | bash

_PLUG="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim"
_VIM=nvim

# if [ ! -f $_PLUG ]; then
#     _PLUG="~/.vim/autoload/plug.vim"
#     _VIM=vim
# fi

echo "installing vim-plug for $_VIM"

sh -c "curl -fLo $_PLUG --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

mkdir -p $HOME/.config/nvim/custom
# mkdir -p $HOME/.vim/plug

curl -L https://raw.githubusercontent.com/MamoruDS/vimrc/main/init.vim > $HOME/.config/nvim/init.vim

_CUSTOM="$HOME/.config/nvim/custom"

if [ -f 'update.sh' ]; then
    if [ -x "$(command -v bash)" ]; then
        bash update.sh
    else
        curl -L https://raw.githubusercontent.com/MamoruDS/vimrc/main/_update.sh | sh
    fi
else
    if [ -x "$(command -v bash)" ]; then
        curl -L https://raw.githubusercontent.com/MamoruDS/vimrc/main/update.sh | bash
    else
        curl -L https://raw.githubusercontent.com/MamoruDS/vimrc/main/_update.sh | sh
    fi
fi


# sh -c "$_VIM +PlugInstall +qall"
sh -c "$_VIM -c 'PlugInstall | qall'"
