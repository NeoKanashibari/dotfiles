# NeoKanashibari Dotfiles

## Host packages

### Arch Linux

```sh
# first run
pacman -Syu linux-firmware base grub sudo

# Allways default
pacman -Syu archlinux-keyring man-db man-pages bash-completion openssh

# Xorg stuff
pacman -Syu xorg-fonts-100dpi xorg-server xorg-xbacklight xorg-xev
pacman -Syu xorg-xinit xorg-xrandr xorg-xfd xorg-xset xdotool
pacman -Syu bspwm unclutter picom feh xclip sxhkd

# Wayland app
pacman -Syu sway grim slurp alacritty wofi wl-clipboard

# tools
pacman -Syu pass ranger firefox tmux zathura zathura-djvu

# dev tools
pacman -Syu base-devel vim rsync htop nmap lsof git subversion tmux strace

# work tools
pacman -Syu squashfs-tools openfortivpn subversion
```

## Configured software

1. bash
1. bspwm
1. htop
1. nvim
1. pureline
1. sxhkd
1. vim/neovim
1. gnupg

## Other (WIP)

* linuxcmd
* bookmarks
* dmenu

## Quickstart

```sh
git clone --recurse-submodules https://github.com/NeoKanashibari/dotfiles.git $HOME/repos/dotfiles
cd $HOME/repos/dotfiles
./install [homedir] [all|dotfiles|wallpaper|font|check]
```

## Glyph

### purline

```sh
╔
╚
echo "        §  ↓ ✚ ✔ ✘  ⚑ ⏎ ⚡ ▮ ☁   "
```

### polybar

```sh
echo "       既   直睊   "
echo "   戮      "
echo " פֿ"
echo "   "

echo "聯輦"
```

## Notes

### convert pdf to jpg

```sh
pdftoppm -jpeg -r 300 <pdffile> -o <imageprefixname>
```

## systemd networkd configuration

```sh
cat<EOF >/etc/systemd/network/20-wired.network
[Match]
Name=enp*
[Network]
DHCP=true
EOF
```

## docker configuration

```sh
sudo pacman -Suy docker docker-compose docker-buildx
sudo usermod -a -G docker $USER
sudo systemctl enable docker.service
reboot
```


## Refs

- [bspwm scratchpad](https://wiki.archlinux.org/title/Bspwm#Scratchpad)
- [ssh agent](https://stackoverflow.com/questions/18880024/start-ssh-agent-on-login)
- [markdown linter](https://github.com/markdownlint/markdownlint)
- [wofi-style](https://raw.githubusercontent.com/dracula/wofi/master/style.css)
- [gef](https://gef.readthedocs.io/en/master/)
- [ANSI doc](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797)
