return
{
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup {
      -- transparent = true,
      terminal_colors = true,
      style = "storm",
      styles = {
        comments = { italic = false },
        keywords = { italic = true },
        functions = { italic = false },
        variables = { italic = false },
      },

    }
  end,
}
