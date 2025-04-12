-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Vs Code Dark+ (Gogh)'
-- config.color_scheme = 'zenburn (terminal.sexy)'
-- config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })
-- config.font = wezterm.font('Monaco', { weight = 'Bold' })
config.font_size=15

config.window_background_opacity = 0.99

config.use_ime = false

config.tab_bar_at_bottom = true

config.colors = {
  -- foreground = '#c8c8c8',
  background = '#1e1e1e',
}

config.keys = {
  { key = 'f', mods = 'ALT', action = wezterm.action.SendString '\x1bf' },
  { key = 'b', mods = 'ALT', action = wezterm.action.SendString '\x1bb' },
  --# https://github.com/jwilm/alacritty/issues/93#issuecomment-427592040
  { key = 'd', mods = 'ALT', action = wezterm.action.SendString '\x1bd' },
  { key = 'x', mods = 'ALT', action = wezterm.action.SendString '\x1bx' },
  { key = 'Tab', mods = '', action = wezterm.action.SendString '\x09' },
  { key = 'i', mods = 'CTRL', action = wezterm.action.SendString '\x1b[10' },
}

-- and finally, return the configuration to wezterm
return config

