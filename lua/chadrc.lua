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
    enabled = false
  },
  telescope = { style = "bordered" }, -- borderless / bordered
}

M.nvdash = {
    load_on_startup = true,
    header = {
      "██████╗  ██████╗  ██████╗  ██████╗  ██████╗ ",
      "██╔══██╗██╔═══██╗██╔════╝ ██╔════╝ ██╔═══██╗",
      "██║  ██║██║   ██║██║  ███╗██║  ███╗██║   ██║",
      "██║  ██║██║   ██║██║   ██║██║   ██║██║   ██║",
      "██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝",
      "╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ",
      "                                            ",
    },
    buttons = {
      { txt = "  configuration", keys = "enter here", cmd =  "e $MYVIMRC | :cd %:p:h | pwd" },
      { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
      { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
      { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
      { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
      { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

      {
        txt = function()
          local stats = require("lazy").stats()
          local ms = math.floor(stats.startuptime) .. " ms"
          return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
        end,
        hl = "NvDashFooter",
        no_gap = true,
      },

      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    },
}

-- Set the Lua snippets path
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/lua_snippets"

return M
