setopt promptsubst
autoload -U promptinit
promptinit
prompt adam1

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

if [ "`id -u`" -eq 0 ]; then
  export PS1="%{[36;1m%}%T %{[34m%}%n%{[33m%}@%{[37m%}%m %{[32m%}%~ %{[33m%}%#%{[0m%} "
else
  export PS1="%{[36;1m%}%T %{[31m%}%n%{[33m%}@%{[37m%}%m %{[32m%}%~ %{[33m%}%#%{[0m%} "
fi

# no beep
unsetopt beep
unsetopt hist_beep
unsetopt list_beep

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
