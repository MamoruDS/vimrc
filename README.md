```
# requirements
curl
node
yarn # or npm
```

## installation

install nodejs and npm first

```shell
curl -sL install-node.now.sh/lts | bash
```

<details><summary>Arch</summary>

install from command

```shell
pacman -S --noconfirm curl git neovim icu yarn

# fetch profile
curl https://raw.githubusercontent.com/MamoruDS/vimrc/main/install.sh | sh

# update profile
curl https://raw.githubusercontent.com/MamoruDS/vimrc/main/update.sh | sh
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
curl -sL https://raw.githubusercontent.com/MamoruDS/vimrc/main/update.sh | sh
```

</details>
