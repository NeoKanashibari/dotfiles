# check dotfiles
pushd "$(dirname $(readlink -f ~/.bashrc))" >/dev/null
if [ ! -z "$(git status --porcelain)" ];then
    echo -e "\e[33m[WARN]\e[0m $(git rev-parse --show-toplevel) is not clean!"
fi
popd >/dev/null
