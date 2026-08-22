hl.window_rule({
	name	= "supress-maximize-events",
	match	= { class = ".*" },

	suppress_event = "maximize",
})

hl.window_rule({
	name  = "fix-xwayland-drags",
    	match = {
        	class      = "^$",
        	title      = "^$",
        	xwayland   = true,
        	float      = true,
        	fullscreen = false,
        	pin        = false,
    	},

    	no_focus = true,
})

hl.window_rule({
    	name	= "transparent-apps",
    	match	= { class = "^(kitty|thunar)$" },
    
    	opacity = "0.8 0.75",
})

hl.window_rule({
	name	= "intellij-fix",
	match	= { class = "jetbrains-.*" },

	no_initial_focus = true,
})

hl.layer_rule({
	name	= "blur-gtk",
	match	= { class = "gtk4-layler-shell" },

	blur = true,
})

hl.layer_rule({
	name	= "notification-center-blur",
	match	= { namespace = "^(swaync-control-center|swaync-notification-window)$" },

	blur = true,
	ignore_alpha = 0.2,
})

hl.layer_rule({
    	name = "wvkbd-slide",
    	match = { namespace = "^wvkbd$" },

    	animation = "slide bottom",
	blur = false,
})

