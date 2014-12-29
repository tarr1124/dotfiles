#!/bin/bash

DOT_FILES=( .vimrc .zshrc )

for file in ${DOT_FILES}
do
	ln -s $HOME/dotfiles/env_office/$file $HOME/$file
done

mkdir -p $HOME/tarr_env/utils
mkdir -p $HOME/tarr_env/utils/bin
mkdir -p $HOME/tarr_env/utils/src

export http_proxy=http://dev-proxy.db.rakuten.co.jp:9501 
export https_proxy=https://dev-proxy.db.rakuten.co.jp:9501 

wget -nc -P $HOME/tarr_env/utils/src https://github.com/peco/peco/releases/download/v0.2.11/peco_linux_amd64.tar.gz
tar -C $HOME/tarr_env/utils/bin -xzvf $HOME/tarr_env/utils/src/peco_linux_amd64.tar.gz

