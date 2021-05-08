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

-- Terminal
map('t', 'jj', '<C-\\><C-n>', options) -- exit terminal insert mode

-- LSP
map("n", "<Leader>xx", ":LspTroubleToggle<CR>", options)
map("n", "<Leader>gd", ":lua vim.lsp.buf.definition()<CR>", options)
map("n", "<Leader>k", ":lua vim.lsp.buf.hover()<CR>", options)
map("n", "<Leader>a", ":lua vim.lsp.buf.code_action()<CR>", options)
 
