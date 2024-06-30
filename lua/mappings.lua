require "nvchad.mappings"

-- add yours here

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Miscellaneous --
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>j", "i<CR><ESC>", { desc = "new line with current cursor" })
map("i", "<C-l>", "<Del>", opts) -- del
map("i", "<C-h>", "<BS>", opts) -- del
map("n", "<C-a>", "gg0vG$", opts) -- select all

-- Remap for dealing with word wrap --
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Navigate buffers --
map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-h>", "<cmd>bprevious<CR>", opts)

-- nvim tree --
map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { silent = true, desc = "Toggle NvimTree" })
map("n", "<leader>e", "<Nop>", { silent = true, desc = "Toggle NvimTree" })
map("n", "<C-n>", "<Nop>") -- remap no operation

-- telescope --
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fw", "<Nop>") -- remap no operation
map("n", "<leader><leader>", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fb", "<Nop>") -- remap no operation
map("n", "<leader>fr", "<cmd>Telescope resume<CR>", { desc = "Telescope resume" })
map("n", "<leader>fb", "<cmd>Telescope builtin<CR>", { desc = "Telescope resume" })
map(
  "n",
  "<leader>fn",
  "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath 'config' }) <CR>",
  { desc = "Search config file" }
)
