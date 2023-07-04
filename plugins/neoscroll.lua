return {
  'karb94/neoscroll.nvim',
  lazy = false,
  config = function()
    require('neoscroll').setup({
      pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
      post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end,
      -- All these keys will be mapped to their corresponding default scrolling animation
      hide_cursor = true,            -- Hide cursor while scrolling
      stop_eof = true,               -- Stop at <EOF> when scrolling downwards
      respect_scrolloff = false,     -- Stop scrolling when the cursor reaches the scrolloff margin of the file
      cursor_scrolls_alone = false,  -- The cursor will keep on scrolling even if the window cannot scroll further
      easing_function = "quadratic", -- Default easing function
      performance_mode = false,      -- Disable "Performance Mode" on all buffers.
    })
    local t    = {}
    t['<C-u>'] = { 'scroll', { '-0.30', 'false', '10', 'sine', [['cursorline']] } }
    t['<C-d>'] = { 'scroll', { '0.30', 'false', '10', 'sine', [['cursorline']] } }
    require('neoscroll.config').set_mappings(t)
  end
}
