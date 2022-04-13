# Install and path software from source

## dmenu

```
cd demu
patch < ../suckless-pathes/dmenu-center-4.8.diff
patch < ../suckless-pathes/dmenu-border-4.9.diff
make && sudo make install
make clean && git checkout -- . && git clean -fdx

```

## st

```
cd st
patch < ../suckless-pathes/st-font-mononoki.patch
patch < ../suckless-pathes/st-alpha-0.8.2.diff
patch < ../suckless-pathes/st-scrollback-master.diff
patch < ../suckless-pathes/st-scrollback-mouse-20191024-a2c479c.diff
make && sudo make install
make clean && git checkout -- . && git clean -fdx
```

## polybar

### dependencies

#### build

sudo pacman -Syu cmake python pkg-config python-sphinx python-packaging

#### runtime

sudo pacman -Syu cairo xcb-util-image xcb-util-wm xcb-util-xrm xcb-util-cursor

### build
```
cd polybar
git submodule init && git submodule update
mkdir build && cmake ..
make && sudo make install
```
