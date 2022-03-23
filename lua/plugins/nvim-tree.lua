vim.g.nvim_tree_special_files = { ['package.json'] = 2, ['index.ts'] = 1, ['index.tsx'] = 1 }

require("nvim-tree").setup({
  view = {
    width = 40
  }
})

local tree_cb = require('nvim-tree.config').nvim_tree_callback
local map = vim.api.nvim_set_keymap


