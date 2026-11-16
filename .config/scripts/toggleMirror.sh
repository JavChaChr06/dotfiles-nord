#!/bin/sh
# Toggle the external HDMI monitor between mirroring the laptop panel
# and extending to the right of it.
#   toggleMirror.sh           -> toggle
#   toggleMirror.sh --status  -> prints "true" while mirroring (for swaync's update-command)

INT=eDP-1
EXT=$(hyprctl monitors all | awk '/^Monitor HDMI/ {print $2; exit}')

# mirrorOf is "none" when the monitor isn't mirroring anything
mirroring() {
	[ -n "$EXT" ] || return 1
	state=$(hyprctl monitors all | awk -v m="$EXT" '$1=="Monitor" {f=($2==m)} f && /mirrorOf:/ {print $2; exit}')
	[ -n "$state" ] && [ "$state" != "none" ]
}

if [ "$1" = "--status" ]; then
	mirroring && echo true || echo false
	exit 0
fi

if [ -z "$EXT" ]; then
	notify-send -a Display -i video-display "No HDMI monitor connected"
	exit 1
fi

if mirroring; then
	hyprctl eval "hl.monitor({ output = \"$EXT\", mode = \"preferred\", position = \"auto-right\", scale = \"0.75\", mirror = \"\" })" >/dev/null
	notify-send -a Display -i video-display "Extending to $EXT"
else
	hyprctl eval "hl.monitor({ output = \"$EXT\", mode = \"preferred\", position = \"auto\", scale = \"auto\", mirror = \"$INT\" })" >/dev/null
	notify-send -a Display -i video-display "Mirroring $INT to $EXT"
fi
