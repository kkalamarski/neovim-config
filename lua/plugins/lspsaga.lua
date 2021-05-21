local saga = require 'lspsaga'
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

saga.init_lsp_saga({
  code_action_prompt = { enable = false }
})

-- Async lsp finder
map('n', '<Leader>gh', ':Lspsaga lsp_finder<CR>', options)

-- Code actions
map('n', '<Leader>ca', ':Lspsaga code_action<CR>', options)
map('v', '<Leader>ca', ':<C-U>Lspsaga range_code_action<CR>', options)

-- Hover doc
map('n', 'K', ':Lspsaga hover_doc<CR>', options)

-- Signature help
map('n', '<Leader>gs', ':Lspsaga signature_help<CR>', options)

-- Rename
map('n', '<Leader>rn', ':Lspsaga rename<CR>', options)

-- Preview definition
map('n', '<Leader>pd', ':Lspsaga preview_definition<CR>', options)

