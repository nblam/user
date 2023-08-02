return {
  'NeogitOrg/neogit',
  lazy = false,
  dependencies = 'nvim-lua/plenary.nvim',
  config = function ()
    require("neogit").setup {
    }
  end,
}
