hl.config({
	input = {
		kb_layout = "de",
		kb_variant = "",
        	kb_model   = "",
        	kb_options = "",
        	kb_rules   = "",

        	follow_mouse = 1,

       		sensitivity = -0.5,

        	touchpad = {
           		natural_scroll = true,
			scroll_factor = 0.4,
		},
	},
})

hl.config({
	gestures = { workspace_swipe_cancel_ratio = 0.15, }
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

hl.device({
	name = "elan06fa:00-04f3:327e-touchpad",
	sensitivity = -0.1,
})

hl.device({
	name = "wacom-hid-53b7-finger",
	output = "eDP-1",
})

hl.config({
	plugin = {
		hyprgrass = {
			sensitivity = 4.0,
			long_press_delay = 400,
			edge_margin = 10,
		},

		hyprexpo = {
            		columns = 3,
            		gaps_in = 5,
            		gaps_out = 0,
            		bg_col = "rgb(111111)",
            		workspace_method = "center current",
            		gesture_distance = 200,
            		cancel_key = "escape",
            		show_cursor = 1,
        	},
	}
})

hl.plugin.hyprgrass.bind {
	pattern = {kind = "edge", origin = "r", direction = "l"},
	action = hl.dsp.focus({workspace = "+1"}),
}

hl.plugin.hyprgrass.bind {
    pattern = {kind = "edge", origin = "l", direction = "r"},
    action = hl.dsp.focus({workspace = "-1"}),
}

hl.plugin.hyprgrass.bind {
    pattern = {kind = "edge", origin = "u", direction = "d"},
    action = hl.dsp.exec_cmd(menu),
}

hl.plugin.hyprgrass.bind {
    pattern = {kind = "edge", origin = "d", direction = "u"},
    action = hl.dsp.exec_cmd('sh $HOME/.config/scripts/toggleKbd.sh'),
}
