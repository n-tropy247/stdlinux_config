# stdlinux configuration
### Note: A fair amount of this repo is intended to provide customization options to make it easier and nicer to code on stdlinux from a command-line. It is not necessary to use PuTTY if you follow this guide, but I have personally found it to be more stable than FastX. Please feel free to cherry-pick what you actually want from this repo. Feel free also to modify and re-upload to your own repo. Everything here is free to use. Complete filepaths are included in the repo because it is intended for everything to be copied to your home directory on stdlinux as is (excluding putty_config.reg), then follow the steps detailed here.

![setup example image](https://github.com/n-tropy247/stdlinux_config/blob/assets/images/stdlinux_setup.PNG)

My Terminal Configuration on stdlinux.

## neofetch
* Non-essential. Just displays OS info in a nice format.
* [Download a release](https://github.com/dylanaraps/neofetch/releases/latest)
```bash
tar xvzf neofetch-6.1.0.tar.gz
rm neofetch-6.1.0.tar.gz
cd neofetch-6.1.0
neofetch
```
* Feel free to alias neofetch to be available globally in your `.bashrc` file:
```bash
alias neofetch="~/neofetch-6.1.0/neofetch"
```

## vim
* A fair amount of people haven't used vim before, so I'll give the basic commands here.
* To create a file, or edit and existing one, simply enter `vi filename` into your terminal.
* When in vim, you'll to to hit the INSERT key on your keyboard to begin typing your files contents.
* When you are done, hit ESC to exit insert mode, then enter `:wq` to save and exit the file.
* The `:` enters vim's internal command-line, and `wq` tells vim to "write and quit"
* vim offers a lot of extensibility and neovim offers even more, so feel free to play around.
* Using this guide will result in an nvim setup that checks code errors from within nvim before you exit.

## git
* Already installed on stdlinux
* If the server you're working with doesn't have `git`, install it so you can properly clone repos:
```bash
sudo apt install git-all
```

## neovim
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
### NOTE:
* All references to '~/nvim' in provided files must be updated to `/usr/bin/nvim'` if you use apt.

## vim-plug
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* Once everything else is installed and all files/dirs are copied over, run `PlugInstall` from nvim.

## zsh
* Already on stdlinux. Necessary config already available through this repo.
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
* [Another user already has a good guide on initial config](https://github.com/qxxxb/stdlinux-dotfiles/blob/master/GUIDE.md).

## zplug
```bash
git clone https://github.com/b4b4r07/zplug ~/.zplug
```
* Once everything else is installed and all files/dirs are copied over, run `zplug install`.

## tmux
* Already on stdlinux. See below link for instructions.
```bash
apt install tmux
```
* [Easy tmux guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

## PuTTY
* This is my preferred remote connection solution.
* [Download PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
* Import the PuTTY configuration reg file provided.
* PuTTY is configured to connect to stdlinux and use the [Solarized Dark Theme](https://github.com/altercation/solarized/tree/master/putty-colors-solarized)
* If you wish to use the config with another server, simply change the relevant server info and save.
### NOTE:
* It's possible that PuTTY might not be looking for sessions keys in the right spot.
* If your session isn't showing up after importing the registry key, load PuTTY and search for "Sessions" in [procmon](https://docs.microsoft.com/en-us/sysinternals/downloads/procmon).
* Once you have the correct registry path, just modify it at the top of the .reg file.

## Powerline fonts
* If you are using cmd or Powershell to run `bash` on Windows (e.g. Ubuntu on Windows 10), then you may notice that OMZ themes break.
* These themes require the use of a patched powerline font, and cmd/Powershell will not recognize some of the Unicode characters.
* My solution is to simply use [ConEmu](https://conemu.github.io/en/Downloads.html) when using `bash` on Windows.
* [Powerline fonts can be found here](https://github.com/powerline/fonts)
* ConEmu will allow selection of those fonts (I personally use Meslo Dotted) and fix the missing characters.
* If your font isn't appearing in the PuTTY settings (Window/Appearance), check the box that says "Allow selection of variable-pitch fonts" and try again.

## Transferring files
* X11 Forwarding with `zsh` and `tmux` installed is iffy at best.
* My solution is to just use PuTTY's pscp solution.
* On the client machine: `pscp user@server:[source-file] C:\[destination]`
* If you are determined to utilize X11 forwarding, try [XMing](https://sourceforge.net/projects/xming/).
* To enable this in PuTTY, install XMing, then under "Connection->SSH->X11" check the "Enable X11 forwarding" box.
* The display location should be "localhost:0.0"
* You may need to run the following command on the server to make X11 work: `export DISPLAY=:0.0`
* Avoid using `xclip` while using OMZ. It breaks X11.
* Like I said, this tends to work off and on when using zsh, and it doesn't quite work with tmux running at all.
* Troubleshooting this if you enable it is left to you, I never found it necessary.

## Recognition
* Thanks to qxxxb for the templates for the dotfiles provided here.
* I do not know if he wrote them or found them, but his repo is available [here](https://github.com/qxxxb/stdlinux-dotfiles).
