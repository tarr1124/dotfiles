#!/bin/bash -x

DOT_FILES=( .vimrc .zshrc )

mkdir -p $HOME/tarr_env/backups
mkdir -p $HOME/tarr_env/utils
mkdir -p $HOME/tarr_env/utils/bin
mkdir -p $HOME/tarr_env/utils/src

for file in ${DOT_FILES[@]}
do
	mv $HOME/$file $HOME/tarr_env/backups/$file.`date +%Y%m%d`
	ln -s $HOME/dotfiles/env_localdev/$file $HOME/$file
done

wget -nc -O $HOME/tarr_env/utils/src/peco_linux_amd64.tar.gz https://github.com/peco/peco/releases/download/v0.2.11/peco_linux_amd64.tar.gz
tar -C $HOME/tarr_env/utils/src -xzvf $HOME/tarr_env/utils/src/peco_linux_amd64.tar.gz
cp $HOME/tarr_env/utils/src/peco_linux_amd64/peco $HOME/tarr_env/utils/bin/
