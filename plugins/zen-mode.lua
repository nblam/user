return {
  "folke/zen-mode.nvim",
  lazy = false,
  config = function()
    require("zen-mode").setup {
      window = {
        width = 90,
      },
      plugins = {
        twilight = { enabled = false },
      },
    }
  end,
}
