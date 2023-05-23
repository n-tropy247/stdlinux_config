cd $HOME
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/tmux
rm -rf $HOME/.local/nvim
rm -rf $HOME/.bashrc
rm -rf $HOME/.tmux
rm -rf $HOME/.oh-my-zsh
unset ZSH
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/n-tropy247/astronvim_config.git ~/.config/nvim/lua/user
cp $HOME/stdlinux_config/.bashrc $HOME/.bashrc
cp -r $HOME/stdlinux_config/.config/* $HOME/.config/
cp -r $HOME/stdlinux_config/.local/* $HOME/.local/
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm -rf $HOME/.zshrc
cp $HOME/stdlinux_config/.zshrc $HOME/.zshrc
source $HOME/.bashrc
