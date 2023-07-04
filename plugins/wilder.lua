return {
  "gelguy/wilder.nvim",
  lazy = false,
  config = function()
    local wilder = require "wilder"
    wilder.setup { modes = { ":", "/", "?" } }
    wilder.set_option("pipeline", {
      wilder.branch(
        wilder.cmdline_pipeline {
          -- sets the language to use, 'vim' and 'python' are supported
          language = "vim",
          -- 0 turns off fuzzy matching
          -- 1 turns on fuzzy matching
          -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
          fuzzy = 1,
        },
        wilder.search_pipeline()
      ),
    })
    wilder.set_option(
      "renderer",
      wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
        highlights = {
          border = "Normal", -- highlight to use for the border
        },
        highlighter = wilder.basic_highlighter(),
        left = { " ", wilder.popupmenu_devicons() },
        right = { " ", wilder.popupmenu_scrollbar() },
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        border = "rounded",
      })
    )
  end,
}
