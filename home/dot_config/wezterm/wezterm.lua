local wezterm = require 'wezterm'

wezterm.on("gui-startup", function(window)
	local screen = wezterm.gui.screens().active
	if screen.width > 1920 and screen.height > 1080 then
		local top_height        = 30
		local width, height     = 1440, 860
		local tab, pane, window = wezterm.mux.spawn_window {
			position = {
				x = (screen.width - width) / 2,
				y = top_height + (screen.height - height) / 2,
				origin = 'ActiveScreen'
			}
		}
		window:gui_window():set_inner_size(width, height)
	else
		window:gui_window():maximize()
	end
end)

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	background = {
		{
			source = {
				-- Color = '#282c34',
				Color = '#1e1e1e',
			},
			width = '100%',
			height = '100%',
			opacity = 0.95, 
			-- opacity = 0.98, 
		},
	},
	-- color_scheme = 'Dark+',
	color_scheme = 'OneHalfDark',
	-- color_scheme = 'Nord (Gogh)',
	default_cursor_style = 'BlinkingBar',
	enable_tab_bar = false,
	-- font = wezterm.font('JetBrains Mono', { weight = 'Bold' }),
	-- font = wezterm.font('Cascadia Code PL', {}),
	font_size = 10,
	-- initial_cols = 142,
	-- initial_rows = 38,
	-- line_height = 1.25,
	window_close_confirmation = 'NeverPrompt',
	-- window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
}

config.colors = {
	split = '#0078d7',
}

config.keys = {
	{
		key = '_',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	{
		key = '+',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'UpArrow',
		mods = 'SHIFT|ALT',
		action = wezterm.action.AdjustPaneSize { 'Up', 1 },
	},
	{
		key = 'DownArrow',
		mods = 'SHIFT|ALT',
		action = wezterm.action.AdjustPaneSize { 'Down', 1 },
	},
	{
		key = 'LeftArrow',
		mods = 'SHIFT|ALT',
		action = wezterm.action.AdjustPaneSize { 'Left', 1 },
	},
	{
		key = 'RightArrow',
		mods = 'SHIFT|ALT',
		action = wezterm.action.AdjustPaneSize { 'Right', 1 },
	},
	{
		key = 'UpArrow',
		mods = 'ALT',
		action = wezterm.action.ActivatePaneDirection('Up'),
	},
	{
		key = 'DownArrow',
		mods = 'ALT',
		action = wezterm.action.ActivatePaneDirection('Down'),
	},
	{
		key = 'LeftArrow',
		mods = 'ALT',
		action = wezterm.action.ActivatePaneDirection('Left'),
	},
	{
		key = 'RightArrow',
		mods = 'ALT',
		action = wezterm.action.ActivatePaneDirection('Right'),
	},
}

return config
