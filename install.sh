cd $HOME
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/tmux
rm -rf $HOME/.local/nvim
rm -rf $HOME/.bashrc
rm -rf $HOME/.tmux
rm -rf $HOME/.oh-my-zsh
mkdir $HOME/openssl
mkdir $HOME/sslsrc
cd $HOME/sslsrc
wget www.openssl.org/source/openssl-1.1.1.tar.gz
tar zxvf openssl-1.1.1.tar.gz
cd openssl-1.1.1
./config --prefix=$HOME/openssl --openssldir=$HOME/openssl no-ssl2
make
make test
make install
cd $HOME
rm -rf $HOME/sslsrc
git clone https://github.com/git/git
cd git
make configure && ./configure --prefix=$HOME/git && make && make install
wget https://github.com/nelsonenzo/tmux-appimage/releases/download/3.2a/tmux.appimage
chmod u+x tmux.appimage
mv tmux.appimage tmux
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
