# Making stdlinux better

## Pre-requisites

### Windows Users

You will need a terminal that supports 256 colors and a nerd font.

- If you're on Windows 11, you have **Windows Terminal** pre-installed.
- If you're on Windows 10, you can download it [here.](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
- If you're on anything older, you'll have to use something like [ConEmu.](https://conemu.github.io/)
- For any version of Windows, you can download nerd fonts from [the official website.](https://conemu.github.io/)

### Mac Users

You will also need a terminal that supports 256 colors and a nerd font.

- To get nerd fonts, install [Homebrew](https://brew.sh/) and follow [this guide.](https://www.geekbits.io/how-to-install-nerd-fonts-on-mac/)
- To get the correct color space, either switch to [iterm2](https://iterm2.com/)
  or install a [patched screen.](https://gist.github.com/shawnbot/3277580)

### Linux Users

You know your way around your distro's package manager if you daily drive Linux.\
Make sure your terminal supports xterm-256colors and you have a nerd font installed.\
Check `echo $TERM` to determine your terminal type.

## Note

Feel free also to modify and re-upload to your own repo.\
Everything here is free to use.

![setup example image](https://github.com/n-tropy247/stdlinux_config/blob/assets/images/stdlinux_setup.PNG)

## Installation

### This **_will_** reset any zsh/nvim/tmux configurations you already have

```bash
cd $HOME
git clone https://github.com/n-tropy247/stdlinux_config
cd stdlinux_config
chmod +x install.sh
./install.sh
cd $HOME && rm -rf stdlinux_config/
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

## Important Configuration

- You can install useful LSPs using `:MasonInstall lsp_name`
  I suggest at least `:MasonInstall c` and `:MasonInstall asm-lsp`
- Similarly, tree-sitter parsers can be installed with `:TSInstall ts_name`
  I suggest at least `:TSInstall c` and `:TSInstall vim`
  There are many more that are useful, so experiment!
- This updates the tmux leader from `<C-b>` to `<C-space>` which I found to be easier.
- Tmux pane navigation is possible with both the mouse or the vim standard pane keys
  `<C-h>` `<C-j>` `<C-k>` and `<C-l>`
- The general layout of nvim comes from the base plugin [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- A lot of the navigation, including `space` as the leader, is unchanged.
- `<leader>u` will provide an undotree for the current file
- `<leader>a` will add the current file to [harpoon](https://github.com/ThePrimeagen/harpoon)
- `<leader>gs` will open a git explorer
- `<C-e>` will open the harpoon quick switcher
- Harpooned files can be navigated using `<C-h>` `<C-t>` `<C-n>` and `<C-j>`
