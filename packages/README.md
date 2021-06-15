# AUR packages

## install aur package

```sh
git clone <aurrepo>
cd <aurpacakgename>
makepkg -si
```

## remove package

```sh
pacman -R <packagename>
```

## Upgrading packages

In the directory containing the package's PKGBUILD you must first update the
files and changes by using the command.

```sh
git pull
makepkg -si
```
