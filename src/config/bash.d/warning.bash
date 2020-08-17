# check dotfiles
pushd "$(dirname $(readlink -f ~/.bashrc))" >/dev/null
if [ ! -z "$(git status --porcelain)" ];then
    rootrepo=$(git rev-parse --show-toplevel)
    echo -e "\e[33m[WARN]\e[0m $rootrepo is not clean!"
    popd >/dev/null ; cd $rootrepo
fi
