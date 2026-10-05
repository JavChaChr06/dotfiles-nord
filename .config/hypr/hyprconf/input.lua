hl.config({
	input = {
		kb_layout = "de",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = -0.5,

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.4,
		},
	},
})

hl.config({
	gestures = { workspace_swipe_cancel_ratio = 0.15 },
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "elan06fa:00-04f3:327e-touchpad",
	sensitivity = -0.1,
})

hl.device({
	name = "wacom-hid-53b7-finger",
	output = "eDP-1",
})
