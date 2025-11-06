#!/bin/sh

TOGGLE=$HOME/.config/scripts/.rotateScreen

if [ -e $TOGGLE ]; then
	rm -rf $TOGGLE
	killall iio-hyprland
else
	touch $TOGGLE
	iio-hyprland
fi
