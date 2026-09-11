hl.on("hyprland.start", function ()
	hl.exec_cmd('hyprpaper & hypridle & hyprsunset')
	hl.exec_cmd('waybar & watch_tablet & iio-hyprland')
	hl.exec_cmd('nwg-dock-hyprland -d -i 32 -nolauncher -w 0')
	hl.exec_cmd('wvkbd-mobintl --hidden -L 250 -R 2 --fn "Jetbrains Mono 16"')
	hl.exec_cmd('systemctl --user start hyprpolkitagent')
	hl.exec_cmd("hyprpm reload")
end)

hl.on("hyprland.start", function ()
	hl.exec_cmd('systemd-inhibit --who="Hyprland config" --why="wlogout keybind" --what=handle-power-key --mode=block sleep infinity & echo $! > /tmp/.hyprland-systemd-inhibit')
end)

hl.on("hyprland.shutdown", function ()
	hl.exec_cmd('kill -9 "$(cat /tmp/.hyprland-systemd-inhibit)"')
end)

