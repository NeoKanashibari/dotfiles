#!/bin/bash
# check dotfiles
cd "$HOME" || exit
pushd $(dirname $(readlink -f ~/.bashrc))
if [[ -n "$(git status --porcelain)" ]];then
    echo -e "\e[33m[WARN]\e[0m commit your config files!"
fi
popd >/dev/null

if [[ ! -f $HOME/.config/currentlayout.sh ]]; then
  echo -e "\e[33m[WARN]\e[0m layout not set at $HOME/.config/currentlayout.sh !"
fi
