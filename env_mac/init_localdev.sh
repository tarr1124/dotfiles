#!/bin/bash -x

DOT_FILES=( .vimrc .zshrc .zshenv brewfile)

mkdir -p $HOME/tarr_env/backups
mkdir -p $HOME/tarr_env/utils
mkdir -p $HOME/tarr_env/utils/bin
mkdir -p $HOME/tarr_env/utils/src

for file in ${DOT_FILES[@]}
do
	mv $HOME/$file $HOME/tarr_env/backups/$file.`date +%Y%m%d`
	ln -s $HOME/dotfiles/env_mac/$file $HOME/$file
done
