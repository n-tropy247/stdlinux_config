#Provided by Riley Castelli and intended for use on stdlinux at OSU
if [ -d "$HOME/.local/bin"  ]; then
   PATH="$HOME/.local/bin:$PATH"
fi
export SHELL=/bin/zsh
exec /bin/zsh -l
