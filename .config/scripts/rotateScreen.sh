#!/bin/sh

TOGGLE=$HOME/.config/scripts/.rotateScreen

if [ -e $TOGGLE ]; then
	rm -rf $TOGGLE
	hyprctl keyword monitor eDP-1,preferred,auto,auto,transform,0
else
	touch $TOGGLE
	hyprctl keyword monitor eDP-1,preferred,auto,auto,transform,2
fi
