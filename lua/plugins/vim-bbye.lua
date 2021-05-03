local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<Leader>q', ':Bdelete<CR>', options)
