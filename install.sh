#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles-old

echo "Backup of current dotfiles will be saved in $olddir"
mkdir -p $olddir

if [ "$OSTYPE" = "linux-gnu" ]; then
	cd ~
	mv .bashrc $olddir
	ln -s dotfiles/bashrc-linux .bashrc
fi

cd ~
mv .vimrc $olddir
ln -s dotfiles/vimrc .vimrc
