local wezterm = require 'wezterm'
local config = {}

config.hide_tab_bar_if_only_one_tab = true

config.enable_wayland = false
config.automatically_reload_config = true
config.adjust_window_size_when_changing_font_size = false

config.window_background_opacity = 0.92
config.color_scheme = 'Black Metal (base16)'
config.font_size = 14.0
config.font = wezterm.font('maple mono')

config.window_padding = {
	top = 0,
	right = 0,
	left = 0,
	bottom = 0,
}

return config
