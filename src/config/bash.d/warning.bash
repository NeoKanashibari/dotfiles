#!/bin/bash
# check dotfiles
cd "$HOME" || exit

if [[ ! -f $HOME/.config/currentlayout.sh ]]; then
  echo -e "\e[33m[WARN]\e[0m layout not set at $HOME/.config/currentlayout.sh !"
fi
