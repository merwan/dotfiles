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
* gem
* asdf
* git
* tmux
* vim
* X
* zsh
    * Install fzf with `~/.fzf/install`
    * Install Ag: `sudo apt-get install silversearcher-ag`
    * Install autojump: `sudo apt-get install autojump`

# Add a new submodule

```
git submodule add -b master url_to_git_repo  /path/target
```

# Update submodules to latest revision

```
git submodule update --init --remote --recursive
```
