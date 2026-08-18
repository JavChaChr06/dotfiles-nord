#!/bin/sh

FILE=/home/javi/.config/scripts/.tabletmode
TOGGLE=/home/javi/.config/scripts/.rotateScreen

if [ -e $FILE ]; then
	if [ -e $TOGGLE ]; then
		echo '󰑸 '
	else
		echo ' '
	fi
else
	echo ''
fi
