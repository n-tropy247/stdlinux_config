#Provided by Riley Castelli and intended for use on stdlinux at OSU
bindkey -v

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -a 'm' edit-command-line

bindkey 'jk' vi-cmd-mode

bindkey '^F' autosuggest-accept
bindkey -a '^F' autosuggest-accept

bindkey '^P' up-history
bindkey '^N' down-history

bindkey -a 'E' end-of-line
bindkey -a 'B' beginning-of-line

bindkey -a '$' vi-forward-blank-word
bindkey -a '^' vi-backward-blank-word

# cursor indicator for vi mode {{{

zle-keymap-select () {
    if [ $KEYMAP = vicmd  ]; then
        printf "\033[2 q"
    else
        printf "\033[6 q"
    fi
}
zle -N zle-keymap-select

zle-line-init () {
    zle -K viins
    printf "\033[6 q"
}
zle -N zle-line-init

# }}}

