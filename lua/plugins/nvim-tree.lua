require("nvim-tree").setup({
  view = {
    width = 40
  }
})

local tree_cb = require('nvim-tree.config').nvim_tree_callback
local map = vim.api.nvim_set_keymap


