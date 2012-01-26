autoload -U colors && colors
export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ls='ls -G'
alias ll='ls -lg'
alias duh='du -csh'

export TERM='rxvt-unicode'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE=$HOME/.history
export SAVEHIST=$HISTSIZE

# no beep
unsetopt beep
unsetopt hist_beep
unsetopt list_beep

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
