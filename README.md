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
* Feel free to alias neofetch to be available globally in your `.bashrc' file:
```bashalias neofetch="~/neofetch-6.1.0/neofetch'``

## nvim
```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```
* On ubuntu, it is easier to install from `apt`:
```bash
sudo apt-get install software-properties-common
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```
* Note: all references to '~/nvim' in provided files must now be updated to `/usr/bin/nvim'

## vim-plug
`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
* Once everything else is installed and all files/dirs are copied over, run `PlugInstall` from nvim

## zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* [Another user already has a good guide on initial config](https://github.com/qxxxb/stdlinux-dotfiles/blob/master/GUIDE.md)

## zplug
`git clone https://github.com/b4b4r07/zplug ~/.zplug`
* Once everything else is installed and all files/dirs are copied over, run `zplug install`

## tmux
`apt install tmux`
* [Easy tmux guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

## PuTTY
* [Download PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
* Import the PuTTY configuration reg file provided.
* PuTTY is configured to connect to stdlinux and use the [Solarized Dark Theme](https://github.com/altercation/solarized/tree/master/putty-colors-solarized)
* If you wish to use the config with another server, simply change the relevant server info and save.

## Powerline fonts
* If you are using cmd or Powershell to run `bash` on Windows (e.g. Ubuntu on Windows 10), then you may notice that OMZ themes break.
* These themes require the use of a patched powerline font, and cmd/Powershell will not recognize some of the Unicode characters.
* My solution is to simply use [ConEmu](https://conemu.github.io/en/Downloads.html) when using `bash` on Windows.
* [Powerline fonts can be found here](https://github.com/powerline/fonts)
* ConEmu will allow selection of those fonts (I personally use Meslo Dotted) and fix the missing characters.
* If you're font isn't appearing in the PuTTY settings ("Window/Appearance"), check the box that says "Allow selection of variable-pitch fonts" and try again.

## Transferring files
* X11 Forwarding with `zsh` and `tmux` installed is iffy at best.
* My solution is to just use PuTTY's pscp solution.
* On the client machine: `pscp user@server:[source-file] C:\[destination]`
* If you are determined to utilize PuTTY's X11 forwarding, try [XMing](https://sourceforge.net/projects/xming/)
* PuTTY has the option to enable X11 under "Connection/SSH".
* You may need to run the following command on the server to make X11 work: `export DISPLAY=:0.0`
* Avoid using `xclip` while using OMZ. It breaks X11.
