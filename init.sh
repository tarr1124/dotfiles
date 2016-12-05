#!/bin/bash

DOTFILES=`cd $(dirname $0) && pwd`

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

	ln -s $DOTFILES/$f $HOME/$f
done

