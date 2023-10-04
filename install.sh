echo 'This has been fully commented out because it is broken. Run at your own risk.'

#cd $HOME

# Delete existing configs
#rm -rf $HOME/.config/nvim
#rm -rf $HOME/.config/tmux
#rm -rf $HOME/.local/nvim
#rm -rf $HOME/.bashrc
#rm -rf $HOME/.tmux
#rm -rf $HOME/.oh-my-zsh

# Create install dirs for openssl
#mkdir $HOME/openssl
#mkdir $HOME/sslsrc
#cd $HOME/sslsrc

# Download and install openssl 1.1.1 for building LSPs
#wget www.openssl.org/source/openssl-1.1.1.tar.gz
#tar zxvf openssl-1.1.1.tar.gz
#cd openssl-1.1.1
#./config --prefix=$HOME/openssl --openssldir=$HOME/openssl no-ssl2
#make
#make test
#make install
#cd $HOME
#rm -rf $HOME/sslsrc

# Get the latest git and add it to PATH
#git clone https://github.com/git/git
#cd git
#make configure && ./configure --prefix=$HOME/git && make && make install
#export PATH=$HOME/git:$PATH

# Get the latest tmux
#wget https://github.com/nelsonenzo/tmux-appimage/releases/download/3.2a/tmux.appimage
#chmod u+x tmux.appimage
#mv tmux.appimage tmux

# Install rust
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Download and install nvim
#curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
#chmod u+x nvim.appimage
#mv nvim.appimage nvim

# Install tmux package man
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install astronvim and clone my config
#git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
#git clone https://github.com/n-tropy247/astronvim_config.git ~/.config/nvim/lua/user

# Copy over bashrc and tmux conf
#cp $HOME/stdlinux_config/.bashrc $HOME/.bashrc
#mkdir $HOME/.config/tmux
#cp $HOME/stdlinux_config/tmux.conf $HOME/.config/tmux/

# Install OMZ and some plugins
#unset ZSH
#export RUNZSH=no
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Delete OMZ's zshrc and copy mine
#rm -rf $HOME/.zshrc
#cp $HOME/stdlinux_config/.zshrc $HOME/.zshrc

# Apply
#source $HOME/.bashrc
