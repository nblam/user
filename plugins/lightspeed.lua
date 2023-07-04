return
{
  'ggandor/lightspeed.nvim',
  lazy = false,
  config = function()
    require 'lightspeed'.setup {
      -- jump_to_unique_chars = false,
      -- safe_labels = {}
    }
  end
}
