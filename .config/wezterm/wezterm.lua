local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font_size = 16.0
config.use_ime = true
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20

-- Tab

config.window_decorations = "RESIZE"
config.show_tabs_in_tab_bar = true
config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}
config.window_background_gradient = {
	colors = {
		"#000000"
	},
}
config.show_new_tab_button_in_tab_bar = false
config.colors = {
	tab_bar = {
		inactive_tab_edge = "none",
	},
}
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local background = "#283033"
	local foreground = "#ffffff"

	if tab.is_active then
		background = "#ae8b2d"
		foreground = "#ffffff"
	end

	local title = tab.active_pane.title

	return {
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
	}
end)

-- keybindings

config.keys = {
	-- フォントとサイズを大きくする
	{
		key = "+",
		mods = "CMD",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "-",
		mods = "CMD",
		action = wezterm.action.DecreaseFontSize,
	},
	-- 下方向にペインを分割する
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- 右方向にペインを分割する
	{
		key = "h",
		mods = "CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- ペインを閉じる
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

return config