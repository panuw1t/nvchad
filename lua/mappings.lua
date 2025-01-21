require "nvchad.mappings"

-- add yours here

local opts = { noremap = true, silent = true }
local map = vim.keymap.set
-- Disable mappings
local nomap = vim.keymap.del

-- Miscellaneous --
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>j", "i<CR><ESC>", { desc = "new line with current cursor" })
map("i", "<C-l>", "<Del>", opts) -- del
map("i", "<C-h>", "<BS>", opts) -- del
map("n", "<C-a>", "gg0vG$", opts) -- select all
nomap("n", "<tab>")

-- Remap for dealing with word wrap --
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Navigate buffers --
-- map("n", "<S-l>", function()
--   require("nvchad.tabufline").next()
-- end, opts)
-- map("n", "<S-h>", function()
--   require("nvchad.tabufline").prev()
-- end, opts)
map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-h>", "<cmd>bprevious<CR>", opts)
nomap("n", "<leader>x")
map("n", "<leader>x", "<cmd>bdelete<CR>", opts)

-- nvim tree --
map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { silent = true, desc = "Toggle NvimTree" })
nomap("n", "<leader>e")
nomap("n", "<C-n>")

-- telescope --
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
nomap("n", "<leader>fw")
map("n", "<leader><leader>", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
nomap("n", "<leader>fb")
map("n", "<leader>fr", "<cmd>Telescope resume<CR>", { desc = "Telescope resume" })
map("n", "<leader>fb", "<cmd>Telescope builtin<CR>", { desc = "Telescope builtin" })
map(
  "n",
  "<leader>fn",
  "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath 'config' }) <CR>",
  { desc = "Search config file" }
)

-- toggleable terminal --
nomap({ "n", "t" }, "<a-h>")
map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle {
    pos = "sp",
    size = 1,
    id = "horizonTerm",
  }
end, { desc = "Terminal Toggle horizon term" })

map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true, timeout_ms = 2000 }
end, { desc = "format files" })

-- harpoon --
local harpoon = require("harpoon")

nomap("n", "<C-h>")
nomap("n", "<C-l>")
nomap("n", "<C-j>")
nomap("n", "<C-k>")

harpoon:setup()

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<C-j>", function() harpoon:list():select(1) end)
map("n", "<C-k>", function() harpoon:list():select(2) end)
map("n", "<C-l>", function() harpoon:list():select(3) end)
map("n", "<C-;>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-J>", function() harpoon:list():prev() end)
map("n", "<C-S-K>", function() harpoon:list():next() end)


nomap("n", "<leader>h")
