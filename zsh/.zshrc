# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man-pages dotenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ll='ls -lg'
alias duh='du -csh'
alias la='ls -A'
alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias lla='ls -la'
alias r=rails
alias pingg='ping www.google.com'
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases" # my aliases

export TERM='rxvt-unicode-256color'

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

PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Configure Autojump
. /usr/share/autojump/autojump.sh

# Load ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
