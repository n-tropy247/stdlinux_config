# Making stdlinux easier to use

## Note

A fair amount of this repo is intended to provide customization
options to make it easier and nicer to code on stdlinux from a command-line.
It is not necessary to use PuTTY if you follow this guide, but I have
personally found it to be more stable than FastX. Please feel free to
cherry-pick what you actually want from this repo. Feel free also to modify
and re-upload to your own repo. Everything here is free to use.

![setup example image](https://github.com/n-tropy247/stdlinux_config/blob/assets/images/stdlinux_setup.PNG)

## Install all required packages below, then run the below

## This **_will_** reset any zsh/nvim/tmux configurations you already have

```bash
git clone https://github.com/n-tropy247/stdlinux_config
cd stdlinux_config
chmod +x install.sh
./install.sh
cd $HOME
rm -rf stdlinux_config/
```

## Required packages

### Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
./nvim
```

### Tmux Package Manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Important Notes

### Tmux

- [Easy tmux guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

### Powerline fonts

- Your terminal must have a powerline font installed to show special characters
  and certain advanced formatting.
- [Powerline fonts can be found here](https://github.com/powerline/fonts)

### Transferring files

- There will be a document uploaded to Piazza with detailed instructions on using
  sftp and scp. You may choose whichever works best for you.
