local b = "sh install.sh yarn"
if vim.fn.executable "pwsh" == 1 then
  b = "pwsh install.ps1 yarn"
end

return {
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "barrett-ruth/import-cost.nvim",
    -- build = "sh install.sh yarn",
    event = "VeryLazy",
    -- if on windows
    -- build = "pwsh install.ps1 yarn",
    build = b,
    config = true,
  },
  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = {
      -- options
    },
  },
}
