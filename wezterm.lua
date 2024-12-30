local wezterm = require("wezterm")

-- Main configuration
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- General settings
config.default_cursor_style = "SteadyBar"
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
config.check_for_updates = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.font_size = 10  -- Set default font size to 10
config.font = wezterm.font("JetBrains Mono", { weight = "Regular" })  -- Use regular weight
config.enable_tab_bar = false

-- Window padding
config.window_padding = {
  left = 3,
  right = 3,
  top = 0,
  bottom = 0,
}

-- Background settings
-- Add gradient background
config.window_background_gradient = {
  colors = { '#000000', '#0a0a1f', '#1a1a33' },
  orientation = { Linear = { angle = -45.0 } },
}

-- Hyperlink rules
config.hyperlink_rules = {
  { regex = "\\((\\w+://\\S+)\\)", format = "$1", highlight = 1 },
  { regex = "\\[(\\w+://\\S+)\\]", format = "$1", highlight = 1 },
  { regex = "\\{(\\w+://\\S+)\\}", format = "$1", highlight = 1 },
  { regex = "<(\\w+://\\S+)>", format = "$1", highlight = 1 },
  { regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)", format = "$1", highlight = 1 },
  { regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b", format = "mailto:$0" },
}

-- Event handling
wezterm.on("gui-startup", function()
  local _, _, window = wezterm.mux.spawn_window({})
  window:gui_window():maximize()
end)

-- Key bindings for zooming
config.keys = {
  { key = "+", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
  { key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
  { key = "0", mods = "CTRL", action = wezterm.action.ResetFontSize },
}

return config
