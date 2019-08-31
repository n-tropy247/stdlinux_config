# stdlinux_config

![setup](https://raw.githubusercontent.com/n-tropy247/stdlinux-config/assets/stdlinux-setup.png)

My Terminal Configuration on stdlinux

## neofetch
* [Download a release](https://github.com/dylanaraps/neofetch/releases/latest)
```bash
tar xvzf neofetch-6.1.0.tar.gz
rm neofetch-6.1.0.tar.gz
cd neofetch-6.1.0
neofetch
```

## nvim
```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

## vim-plug
`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

## zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## zplug
`git clone https://github.com/b4b4r07/zplug ~/.zplug`
