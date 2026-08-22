hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 4,

		border_size = 2,

		col = {
			active_border 	= "rgb(4c566a)",
			inactive_border = "rgb(3b4252)",
		},

		resize_on_border = true,

		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 3,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 5,
			render_power = 4,
			color = "rgba(12121fee)"
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 3,

			new_optimizations = true,
			xray = true,
			brightness = 1.0,
			contrast = 1.0,
			vibrancy = 0.15,
		},

		motion_blur = {
			enabled = false,
			samples = 7,
		},
	},

	animations = {
		enabled = true,
	},
})



hl.curve("emphasized", { type = "bezier", points = { {0.05, 0.7}, {0.1, 1.0} } })
hl.curve("standard",   { type = "bezier", points = { {0.2, 0.0},  {0.0, 1.0} } })
hl.curve("snappy",     { type = "spring", mass = 1, stiffness = 350, dampening = 26 })
hl.curve("gentle",     { type = "spring", mass = 1, stiffness = 180, dampening = 24 })

hl.animation({ leaf = "windows",     enabled = true, speed = 3.5, spring = "snappy", style = "popin 88%" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3.5, spring = "snappy", style = "popin 88%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 2.5, bezier = "emphasized", style = "popin 92%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3,   spring = "gentle" })

hl.animation({ leaf = "fade",        enabled = true, speed = 2,   bezier = "standard" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 1.5, bezier = "standard" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 1.5, bezier = "standard" })

hl.animation({ leaf = "layers",      enabled = true, speed = 2.5, spring = "gentle" })
hl.animation({ leaf = "layersIn",    enabled = true, speed = 2.5, spring = "gentle", style = "slide top" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 2,   bezier = "emphasized", style = "slide top" })

hl.animation({ leaf = "workspaces",  enabled = true, speed = 4,   spring = "gentle", style = "slide" })
hl.animation({ leaf = "border",      enabled = true, speed = 3,   bezier = "standard" })
hl.animation({ leaf = "zoomFactor",  enabled = true, speed = 4,   bezier = "emphasized" })



hl.config({
	dwindle = { preserve_split = true, },
})

hl.config({
	master = { new_status = master,	},
})

hl.config({
	scrolling = { fullscreen_on_one_column = true, },
})

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})

