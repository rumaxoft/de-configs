# Unix development environment configs

## bash
##### files: 
- .bash_profile

##### path: 
- /home/user/

## git
##### files: 
- .gitconfig
- .themes.gitconfig

##### path: 
- /home/user/

##### install delta ([repo](https://github.com/dandavison/delta))
 - Fedora
```sh
dnf install git-delta
```
- Debian 
```sh
dpkg -i file.deb
```
.deb files are on the [releases page](https://github.com/dandavison/delta/releases).

## zsh
##### files: 
- .zshrc

##### path: 
- /home/user/

##### install zsh
 - Fedora
```sh
dnf install zsh
```
- Debian 
```sh
apt install zsh
```

##### install ohmyzsh

[repo](https://github.com/ohmyzsh/ohmyzsh)
Oh My Zsh is installed by running one of the following commands in your terminal. You can install this via the command-line with either `curl`, `wget` or another similar tool.

| Method    | Command                                                                                           |
| :-------- | :------------------------------------------------------------------------------------------------ |
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`   |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |

## tmux
##### files: 
- .tmux.conf
- .tmux.remote.conf

##### path: 
- /home/user/

##### install zsh
 - Fedora
```sh
dnf install tmux
```
- Debian 
```sh
apt install tmux
```

##### tmux plugin manager

[repo](https://github.com/tmux-plugins/tpm)

Clone TPM:
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Install plugins by pressing prefix + I(capital i, as Install) to fetch the plugin

## neovim
##### files: 
- custom/
- FiraCode/

##### path: 
- /home/user/.config/nvim/lua

##### install neovim

[installation](https://github.com/neovim/neovim/blob/master/INSTALL.md)

##### install nvchad

[installation](https://nvchad.com/docs/quickstart/install)

```sh
cp custom/ ~/.config/nvim/lua
```

###### install nerd font

```sh
cp FiraCode/ ~/.local/share/fonts
```

## keys mapping over system (keyd)
##### files: 
- default.conf

##### path: 
- /etc/keyd/default.conf

##### install keyd

[installation](https://github.com/rvaiya/keyd?tab=readme-ov-file#installation)
