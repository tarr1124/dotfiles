#!/bin/bash -x

wget -nc -O $HOME/tarr_env/utils/src/peco_linux_amd64.tar.gz https://github.com/peco/peco/releases/download/v0.2.11/peco_linux_amd64.tar.gz
tar -C $HOME/tarr_env/utils/src -xzvf $HOME/tarr_env/utils/src/peco_linux_amd64.tar.gz
cp $HOME/tarr_env/utils/src/peco_linux_amd64/peco $HOME/tarr_env/utils/bin/