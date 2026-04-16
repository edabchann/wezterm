local Config = require('config')

require('utils.backdrops'):set_files():random()

require('events.right-status').setup()
require('events.left-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

local wezterm = require 'wezterm'

local config_options = Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options

config_options.initial_cols = 180
config_options.initial_rows = 50

return config_options
