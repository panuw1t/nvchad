-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "nano-light" },
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  tabufline = {
    enabled = true,
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "███    ██ ███████  ██████  ██    ██ ██ ███    ███",
      "████   ██ ██      ██    ██ ██    ██ ██ ████  ████",
      "██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██",
      "██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██",
      "██   ████ ███████  ██████    ████   ██ ██      ██",
    },
    buttons = {
      { "  configuration", "enter here", "e $MYVIMRC | :cd %:p:h | pwd" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  telescope = { style = "bordered" }, -- borderless / bordered
}

return M
