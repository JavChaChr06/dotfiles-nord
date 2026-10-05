terminal	= "kitty"
fileManager	= "thunar"
menu		= "pgrep wofi >/dev/null 2>&1 && killall wofi || wofi --show drun"
browser		= "floorp"
logoutMenu	= "pgrep wlogout >/dev/null 2>&1 && killall wlogout || wlogout"



require("hyprconf/monitors")
require("hyprconf/autostart")
require("hyprconf/env")
require("hyprconf/look")
require("hyprconf/input")
require("hyprconf/keybinds")
require("hyprconf/rules")
require("hyprconf/plugins")

