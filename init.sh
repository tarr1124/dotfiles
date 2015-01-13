#!/bin/bash -x

DOTFILES_ENV=$1
FILE_PATH=`dirname $0`

mkdir -p $HOME/tarr_env/backups
mkdir -p $HOME/tarr_env/utils
mkdir -p $HOME/tarr_env/utils/bin
mkdir -p $HOME/tarr_env/utils/src

DOT_FILES=( `ls -aF | grep "^\." | grep -v /` )

for file in ${DOT_FILES[@]}
do
	mv $HOME/$file $HOME/tarr_env/backups/$file.`date +%Y%m%d`
	ln -s $HOME/dotfiles/$file $HOME/$file
done

for name in `find $FILE_PATH/$DOTFILES_ENV -type f | gawk -F/ '{print $NF}'`
do if [ ! -e $FILE_PATH/$name ] ; then
	ENV_FILES+=($name)
fi
done

for file in ${ENV_FILES[@]}
do
        mv $HOME/$file $HOME/tarr_env/backups/$file.`date +%Y%m%d`
        ln -s $HOME/dotfiles/$DOTFILES_ENV/$file $HOME/$file
done


. $FILE_PATH/$DOTFILES_ENV/init.sh
