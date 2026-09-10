-- Hyprland Lua config.
-- Split into modules; each require() runs in its own scope so errors stay isolated.
-- https://wiki.hypr.land/configuring/core/

require("mocha")
require("monitors")
require("vars")
require("autostart")
require("envs")
require("look")
require("input")
require("keybindings")
require("windows")
require("xwayland")
