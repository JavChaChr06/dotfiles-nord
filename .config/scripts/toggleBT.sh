#!/bin/sh

# Toggle based on the adapter's real power state, so it can't drift out of sync
if bluetoothctl show | grep -q "Powered: yes"; then
	bluetoothctl power off
else
	bluetoothctl power on
fi
