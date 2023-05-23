# Provided by Riley Castelli and intended for use on stdlinux at OSU

# Oh My Zsh Configs

# omz path
export ZSH="$HOME/.oh-my-zsh/"

# omz theme
# check out a list at https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="clean"

# omz completions
HYPHEN_INSENSITIVE="true"

# omz autocorrection
ENABLE_CORRECTION="true"

# omz command progress
COMPLETION_WAITING_DOTS="true"

# omz plugins
plugins=(git colored-man-pages command-not-found python zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configs

# Keybindings
bindkey "\e[H^" beginning-of-line
bindkey "\e[F^" end-of-line

# Language environment
# export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='$HOME/nvim'

# Init fuzzy finder
[ -z "$ZSH_NAME"  ] && [ -f ~/.fzf.bash  ] && source ~/.fzf.bash

# Set env vars
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export TERM=xterm-256color

# Important aliases
alias vi="~/nvim"
alias tmux="tmux -u"

