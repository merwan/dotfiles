dotfiles.git
============

# Installation

Install stow:
```
sudo apt-get install stow
```

Clone this repository:

```sh
cd $HOME
git clone --recursive https://github.com/merwan/dotfiles.git
```

Enter `dotfiles` directory and use stow to install selected configuration files:

```sh
cd dotfiles
stow vim
```

# Available configuration files:

* bash
* git
* tmux
* vim
* X
* zsh
