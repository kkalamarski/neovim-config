local tree_cb = require('nvim-tree.config').nvim_tree_callback
local map = vim.api.nvim_set_keymap

map('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
map('n', '<Leader>rr', ':NvimTreeRefresh<CR>', { silent = true })

