# Dotfiles

## Host needed packages

### Arch Linux

```sh
pacman -Syu man-db man-pages xorg-fonts-100dpi xorg-server xorg-xbacklight  \
xorg-xev xorg-xfd xorg-xinit xorg-xrandr xorg-xset pass xdotool delta bspwm \
ranger firefox vim zathura zathura-djvu rsync nodejs firefox htop nmap lsof \
openfortivpn openssh subversion git xclip tmux squashfs-tools strace
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

## Refs

[bspwm scratchpad](https://wiki.archlinux.org/title/Bspwm#Scratchpad)
[ssh agent](https://stackoverflow.com/questions/18880024/start-ssh-agent-on-login)
[markdown linter](https://github.com/markdownlint/markdownlint)
