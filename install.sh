#!/bin/sh

DEST=${1:-$HOME}
[ ! -d $DEST ] && mkdir $DEST

for file in $(find src -mindepth 1) ; do
    [[ -d $file && ! -d $DEST/.${file#*/} ]] \
        && echo "mkdir -p $DEST/.${file#*/}" \
        && mkdir -p $DEST/.${file#*/}
    [[ -f $file && ! -f $DEST/.${file#*/} ]] \
        && echo "ln -s $PWD/$file $DEST/.${file#*/}" \
        && ln -s $PWD/$file $DEST/.${file#*/}
    [[ -f $file && $(readlink -f $DEST/.${file#*/}) != $PWD/$file ]] \
        && echo "ln -sf $PWD/$file $DEST/.${file#*/}" \
        && ln -sf $PWD/$file $DEST/.${file#*/}
done
echo "config files installed"
