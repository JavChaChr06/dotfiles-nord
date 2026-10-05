#!/bin/sh

FILE=$HOME/.config/scripts/.tabletmode
TOGGLE=$HOME/.config/scripts/.rotateScreen

if [ -e $FILE ]; then
	if [ -e $TOGGLE ]; then
		echo '󰑸 '
	else
		echo ' '
	fi
else
	echo ''
fi
