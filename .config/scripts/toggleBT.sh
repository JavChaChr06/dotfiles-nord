#!/bin/sh

TOGGLE=$HOME/dotfiles-nord/dotfiles/config/scripts/.toggleBT

if [ ! -e $TOGGLE ]; then
	touch $TOGGLE
	bluetoothctl power on

else
	rm -rf $TOGGLE
	bluetoothctl power off

fi
