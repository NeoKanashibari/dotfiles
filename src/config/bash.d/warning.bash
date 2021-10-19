# check dotfiles
pushd "$(dirname $(readlink -f ~/.bashrc))" >/dev/null
if [[ ! -z "$(git status --porcelain)" ]];then
    rootrepo=$(git rev-parse --show-toplevel)
    echo -e "\e[33m[WARN]\e[0m commit your config files!"
fi
popd >/dev/null

if [[ ! -f $HOME/.config/currentlayout.sh ]]; then
  echo -e "\e[33m[WARN]\e[0m layout not set at $HOME/.config/currentlayout.sh!"
fi
