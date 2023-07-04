return
{
  "rafamadriz/friendly-snippets",
  config = function()
    require 'luasnip'.filetype_extend("typescript", { "javascript", "typescript" })
  end
}
