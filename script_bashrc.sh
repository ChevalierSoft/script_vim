#!/bin/bash

bashrc=~/.bashrc

if [ -f $bashrc ]
then
	date=$(date '+%d-%m-%y_%H:%M:%S')
	new_bashrc=".bashrc-$date"
	echo ".bashrc archived as $new_vimrc"
	mv $bashrc ~/$new_bashrc
fi

cp ./bashrc $bashrc
