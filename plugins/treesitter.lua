return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil,  -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
    ensure_installed = {
      "regex",
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "scss",
      "css",
      "json",
      "markdown",
      "markdown_inline"
    },
  },
}
