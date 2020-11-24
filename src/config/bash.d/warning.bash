# check dotfiles
pushd "$(dirname $(readlink -f ~/.bashrc))" >/dev/null
if [[ ! -z "$(git status --porcelain)" && ! -z $DISPLAY ]];then
    rootrepo=$(git rev-parse --show-toplevel)
    echo -e "\e[33m[WARN]\e[0m $rootrepo is not clean!"
    popd >/dev/null ; cd $rootrepo
else
    popd >/dev/null
fi

if [[ ! -f $HOME/.config/currentlayout.sh ]]; then
  echo -e "\e[33m[WARN]\e[0m layout not set at $HOME/.config/currentlayout.sh!"
fi
