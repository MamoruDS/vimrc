#!/bin/sh

# requirements for arch linux
# pacman -Sy && pacman -S --noconfirm curl git nodejs-lts-fermium icu yarn

# install neovim
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && chmod u+x nvim.appimage && ./nvim.appimage

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

curl https://raw.githubusercontent.com/MamoruDS/vimrc/main/init.vim > $HOME/.config/nvim/init.vim

_CUSTOM="$HOME/.config/nvim/custom"

confs=(
    "basic"
    "utils"
    "commands"
    "plugconf_coc"
    "plugconf_gitgutter"
    "plugconf_nerdtree"
    "syn_json"
    "syn_typescript"
    "syn_vim"
)

for conf in "${confs[@]}"; do
    curl https://raw.githubusercontent.com/MamoruDS/vimrc/main/custom/$conf.vim > $_CUSTOM/$conf.vim
done

# sh -c "$_VIM +PlugInstall +qall"
sh -c "$_VIM -c 'PlugInstall | qall'"
