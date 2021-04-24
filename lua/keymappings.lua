local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Moving between panes
map('n', '<A-Up>', ':wincmd k<CR>', options)
map('n', '<A-Down>', ':wincmd j<CR>', options)
map('n', '<A-Left>', ':wincmd h<CR>', options)
map('n', '<A-Right>', ':wincmd l<CR>', options)

-- File Search
map('n', '<C-g>', ':GFiles<CR>', options)
map('n', '<C-f>', ':BLines<CR>', options)
map('n', '<Leader>rg', ':Rg<CR>', options)


