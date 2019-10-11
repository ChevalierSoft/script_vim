#!/bin/bash

vim= ~/.vim
vimrc=~/.vimrc
colors=~/.vim/colors
n_scheme=molokai.vim
a_scheme=$colors/$n_scheme

if [ -f $vimrc ]
then
	date=$(date '+%d-%m-%y_%H:%M:%S')
	new_vimrc=".vimrc-$date"
	echo ".vimrc archived as $new_vimrc"
	mv $vimrc ~/$new_vimrc
fi

cp ./vimrc $vimrc

if [ ! -d $vim ]
then
	mkdir $vim
fi

if [ ! -d $colors ]
then
	mkdir $colors
fi

if [ ! -f $a_scheme ]
then
	echo "scheme copied"
	cp ./colors/$n_scheme $a_scheme
fi

echo "set -g default-terminal \"screen-256color\"" >> ~/.tmux.conf
#set -g default-terminal "screen-256color"
