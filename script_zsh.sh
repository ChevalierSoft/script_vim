#!/bin/bash

zshrc=~/.zshrc

if [ -f $zshrc ]
then
	date=$(date '+%d-%m-%y_%H:%M:%S')
	new_zshrc=".zshrc-$date"
	echo ".zshrc archived as $new_vimrc"
	mv $vimrc ~/$new_vimrc
fi

cp ./zshrc $zshrc
