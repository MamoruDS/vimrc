```
# requirements
curl
node
yarn # or npm
```

## Installation

### install nodejs

install nodejs by using [nvm](https://github.com/nvm-sh/nvm) or command

```shell
curl -sL install-node.now.sh/lts | bash

# sudo alternative
curl -sL install-node.now.sh/lts | sudo -E bash -
```

### install neovim

[official guide](https://github.com/neovim/neovim/wiki/Installing-Neovim)

<details><summary>Arch</summary>

install from command

```shell
pacman -S --noconfirm curl git neovim icu yarn

# fetch profile
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/install.sh | sh

# update profile
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/update.sh | bash
```

</details>

<details><summary>Debian</summary>

install from command

```shell
apt install curl git

# install neovim
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/install_neovim.sh | bash
# with sudo
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/install_neovim.sh | sudo -E bash -

# fetch profile
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/install.sh | sh

# update profile
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/update.sh | bash
```

</details>

install `neovim` in python provider _(optional)_

```shell
/your/python -m pip install neovim

nvim -c "checkhealth"
nvim -c "UpdateRemotePlugins" # for numirias/semshi
```
