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
-- config.color_scheme = 'AdventureTime'
-- config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })
config.font_size=14

config.window_background_opacity = 0.95

config.use_ime = false

config.keys = {
  { key = 'f', mods = 'ALT', action = wezterm.action.SendString '\x1bf' },
  { key = 'b', mods = 'ALT', action = wezterm.action.SendString '\x1bb' },
  --# https://github.com/jwilm/alacritty/issues/93#issuecomment-427592040
  { key = 'd', mods = 'ALT', action = wezterm.action.SendString '\x1bd' },
  { key = 'x', mods = 'ALT', action = wezterm.action.SendString '\x1bx' },
  { key = 'Tab', mods = '', action = wezterm.action.SendString '\x09' },
  { key = 'i', mods = 'CTRL', action = wezterm.action.SendString '\x1b[105;5u' },
}

-- and finally, return the configuration to wezterm
return config

