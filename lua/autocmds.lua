local augroup = vim.api.nvim_create_augroup("core", { clear = true }) -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

autocmd({ "TextYankPost" }, {
  desc = "Highlight when yanking (copying) text",
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.cmd [[ iabbrev waht what
    iabbrev tehn then
]]

autocmd("FileType", {
  pattern = "kotlin",
  callback = function()
    vim.bo.shiftwidth = 4
  end,
})
