cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/tmux
rm -rf $HOME/.local/nvim
rm -rf $HOME/.zshrc
rm -rf $HOME/.bashrc
cp ./.zshrc $HOME/.zshrc
cp ./.bashrc $HOME/.bashrc
cp -r ./.config $HOME/.config
source $HOME/.bashrc
