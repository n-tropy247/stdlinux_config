# stdlinux_config

![setup](https://github.com/n-tropy247/stdlinux_config/blob/assets/images/stdlinux_setup.PNG)

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
* [Another user already has a good guide on initial config](https://github.com/qxxxb/stdlinux-dotfiles/blob/master/GUIDE.md)

## zplug
`git clone https://github.com/b4b4r07/zplug ~/.zplug`

## tmux
`apt install tmux`


## Transferring files
X11 Forwarding with `zsh` and `tmux` installed is iffy at best.
My solution is to just use PuTTY's pscp solution.
On the client machine: `pscp user@server:[source-file] C:\[destination]
