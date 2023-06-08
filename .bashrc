# Provided by Riley Castelli and intended for use on stdlinux at OSU
if ["$SSH_TTY"] then
  export SHELL=/bin/zsh
  exec /bin/zsh -l
fi
