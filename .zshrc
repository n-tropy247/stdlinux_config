#Provided by Riley Castelli and intended for use on stdlinux at OSU
source ~/.zplug/init.zsh
source ~/.zshrc-custom/keys.zsh
source ~/.zshrc-custom/env.zsh
source ~/.zshrc-custom/general.zsh
source ~/.zshrc-custom/plugins.zsh
source ~/.zshrc-custom/aliases.zsh
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
bindkey "\e[H^" beginning-of-line
bindkey "\e[F^" end-of-line
ZSH_THEME="agnoster"
[ -z "$ZSH_NAME"  ] && [ -f ~/.fzf.bash  ] && source ~/.fzf.bash
export PATH=~/.local/bin:$PATH
export TERM=xterm-256color
xstat () {
  for target in "${@}"; do
    inode=$(ls -di "${target}" | cut -d ' ' -f 1)
    fs=$(df "${target}"  | tail -1 | awk '{print $1}')
    crtime=$(sudo debugfs -R 'stat <'"${inode}"'>' "${fs}" 2>/dev/null |
    grep -oP 'crtime.*--\s*\K.*')
    printf "%s\t%s\n" "${crtime}" "${target}"
  done
}
alias vi="~/nvim"
alias tmux="tmus -2"
if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
