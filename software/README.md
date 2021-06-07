## Install and path software from source

## dmenu

```
cd demu
patch < ../suckless-pathes/dmenu-center-4.8.diff
patch < ../suckless-pathes/dmenu-border-4.9.diff
make && sudo make install
make clean && git checout -- . && git clean -fdx

```

## st

```
cd st
patch < ../suckless-pathes/st-font-mononoki.patch
patch < ../suckless-pathes/st-alpha-0.8.2.diff
patch < ../suckless-pathes/st-scrollback-master.diff
patch < ../suckless-pathes/st-scrollback-mouse-20191024-a2c479c.diff
make && sudo make install
make clean && git checout -- . && git clean -fdx
```

