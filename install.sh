#! /usr/bin/bash

if [[ -f ~/.bashrc ]]; then
	rm ~/.bashrc
fi

ln -s ~/.config/dotfiles/bashrc ~/.bashrc

GLOBAL_CONFIG=~/.config/global_environment.sh
ln -s ~/.config/dotfiles/global_environment.sh $GLOBAL_CONFIG

LOCAL_CONFIG=~/.config/local_environment.sh
if [[ ! -f $LOCAL_CONFIG ]]; then
	touch $LOCAL_CONFIG
fi

if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc vimrc.bak
fi

ln -s ~/.config/dotfiles/vimrc ~/.vimrc
ln -s ~/.config/dotfiles/gdbinit ~/.gdbinit

TYPOS_ALIASES=~/.config/typos.sh
ln -s ~/.config/dotfiles/typos.sh $TYPOS_ALIASES

