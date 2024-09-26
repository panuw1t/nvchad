-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "nano-light" },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  transparency = true,
}

M.ui = {
  tabufline = {
    enabled = true,
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "██████╗  ██████╗  ██████╗  ██████╗  ██████╗ ",
      "██╔══██╗██╔═══██╗██╔════╝ ██╔════╝ ██╔═══██╗",
      "██║  ██║██║   ██║██║  ███╗██║  ███╗██║   ██║",
      "██║  ██║██║   ██║██║   ██║██║   ██║██║   ██║",
      "██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝",
      "╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ",
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

-- Set the Lua snippets path
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/lua_snippets"

return M
