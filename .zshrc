# use emacs key bindings
set -o emacs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
autoload -U colors && colors
export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

autoload -U compinit
compinit

alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ll='ls -lg'
alias duh='du -csh'
alias la='ls -A'
alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias lla='ls -la'
alias sr='screen -r'
alias r=rails
alias update='sudo apt-get update && sudo apt-get dist-upgrade --purge && sudo apt-get clean'
alias nuget='mono --runtime=v4.0.30319 ~/bin/NuGet.exe'

export TERM='rxvt-unicode'
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE=$HOME/.history
export SAVEHIST=$HISTSIZE

# no beep
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
xset -b

# Solarized palette for ls
eval `dircolors ~/.dir_colors`
