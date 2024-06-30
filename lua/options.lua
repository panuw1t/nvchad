require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt -- Set options (global/buffer/windows-scoped)

-- General ----------------------------------------
--opt.fileencoding = 'utf-8' -- the encoding written to a file

-- use powershell for windwos ---------------------------
if vim.fn.executable "pwsh" == 1 then
  opt.shell = "pwsh" -- set shell to powershell
  opt.shellcmdflag = "-Command" -- :h shellcmdflag
  opt.shellquote = '\\"' -- :h shellquote
  opt.shellxquote = "" -- :h shellxquote
end

-- Neovim UI --------------------------------------
opt.number = true -- Show line number
opt.relativenumber = true -- Show relativenumber number
opt.colorcolumn = "100" -- Line lenght marker at 80 columns
opt.wrap = true -- Wrap on word boundary
opt.linebreak = true -- companion to wrap, don't split words
opt.textwidth = 100
opt.scrolloff = 8 -- Set scroll off
-- opt.cursorlineopt = 'both' -- highlight cursorline
