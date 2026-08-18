#!/bin/bash

TOGGLE=$HOME/.config/scripts/.toggleKbd

if [ ! -e $TOGGLE ]; then
	touch $TOGGLE
	pgrep wvkbd-mobintl | xargs -r kill -SIGUSR1

else
	rm -rf $TOGGLE
	pgrep wvkbd-mobintl | xargs -r kill -SIGUSR2

fi
