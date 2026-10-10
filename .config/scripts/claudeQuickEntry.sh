#!/bin/sh

# Open Claude Desktop's Quick Entry overlay.
# On native Wayland the app registers Quick Entry through the GlobalShortcuts
# portal (xdg-desktop-portal-hyprland), which hands it to Hyprland without a
# key. Its id is a hash Chromium generates, so look it up and fire it.
shortcuts=$(hyprctl globalshortcuts | grep -i -o -E '^[a-z0-9._-]*(anthropic|claude)[a-z0-9._-]*:[a-z0-9._+-]+( -> .*)?$')
id=$(printf '%s\n' "$shortcuts" | grep -i 'quick' | head -n1 | cut -d' ' -f1)
[ -n "$id" ] || id=$(printf '%s\n' "$shortcuts" | head -n1 | cut -d' ' -f1)

if [ -n "$id" ]; then
	hyprctl dispatch "hl.dsp.global(\"$id\")"
else
	# App not running (or the portal is missing): just open Claude instead
	claude-desktop >/dev/null 2>&1 &
fi
