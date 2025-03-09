#!/bin/bash

tmux=~/.tmux/
tmuxconf=~/.tmux.conf

if [ -f $tmuxconf ]
then
	date=$(date '+%d-%m-%y_%H:%M:%S')
	new_tmuxconf=".tmuxconf-$date"
	echo ".tmuxconf archived as $new_tmuxconf"
	mv $tmuxconf ~/$new_tmuxconf
fi

cp ./tmux.conf $tmuxconf

if [ ! -d $tmux ]
then
	mkdir $tmux
fi

cp ./tmux/* ~/.tmux/
