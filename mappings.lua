-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- spider
    ["w"] = { "<cmd>lua require('spider').motion('w')<CR>" },
    ["e"] = { "<cmd>lua require('spider').motion('e')<CR>" },
    ["b"] = { "<cmd>lua require('spider').motion('b')<CR>" },
    ["ge"] = { "<cmd>lua require('spider').motion('ge')<CR>" },
    -- second key is the lefthand side of the map
    ["<S-l>"] = function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    ["<S-h>"] = function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    -- Treesj
    ["<leader>m"] = { "<cmd>TSJToggle<cr>", desc = "Toggle Treesitter" },
    -- Hop
    ["<leader>j"] = { "<cmd>HopLineStartAC<cr>" },
    ["<leader>k"] = { "<cmd>HopLineStartBC<cr>" },
    -- Zenmode
    ["<leader>uz"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zenmode" },
    -- hover
    ["gk"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover" },
    -- Find and replace
    ["<leader>rp"] = { ":%s/", desc = "Find and replace" },
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
