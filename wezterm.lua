-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.color_scheme = 'Spacedust (Gogh)'

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = 'h',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

-- Finally, return the configuration to wezterm:
return config
