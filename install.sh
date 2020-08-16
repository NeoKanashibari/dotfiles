#!/bin/bash

print_info()   { printf "\e[1m" ; printf " $@" ; printf "\e[0m\n"  ; }
print_verb()   { printf "\e[32m" ; printf " $@" ; printf "\e[0m\n" ; }
print_warn()   { printf "\e[33m" ; printf " $@" ; printf "\e[0m\n" ; }
print_err()    { printf "\e[31m" ; printf " $@" ; printf "\e[0m\n" ; }
print_action() { printf "\e[1m" ; printf "> $@" ; printf "\e[0m\n" ; }

DEST=$HOME
[ ! -d $DEST ] && mkdir $DEST

for element in $(find src -mindepth 1) ; do
    print_verb "for $element"
    name=${element#*/}
    if [[ ! -d $DEST/.$name && -d $element ]];then
        print_action "mkdir -p $DEST/.$name"
        mkdir -p $DEST/.$name
    elif [[ ! -f $DEST/.$name && -f $element ]];then
        print_action "ln -s $PWD/$element $DEST/.$name"
        ln -s $PWD/$element $DEST/.$name
    elif [ "$(readlink -f $PWD/$element)" != "$PWD/$element" ];then
        print_action "ln -sf $PWD/$element $DEST/.$name"
        ln -sf $PWD/$element $DEST/.$name
    else
        print_action "Nothing to do"
    fi
done
