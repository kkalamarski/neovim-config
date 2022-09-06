local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Moving between panes
map('n', '<Leader><Up>', ':wincmd k<CR>', options)
map('n', '<Leader><Down>', ':wincmd j<CR>', options)
map('n', '<Leader><Left>', ':wincmd h<CR>', options)
map('n', '<Leader><Right>', ':wincmd l<CR>', options)
map('n', '<Leader>vs', ':vsplit<CR>', options)
map('n', '<Leader>hs', ':split<CR>', options)

-- Buffer control
map('n', '<Leader>q', ':Bdelete<CR>', options) -- close buffer
map('n', '<Leader>]]', ':bnext<CR>', options) -- next buffer
map('n', '<Leader>[[', ':bprevious<CR>', options) -- previous buffer

-- Dashboard
map('n', '<Leader>dd', ':Dashboard<CR>', options)
map('n', '<Leader>ct', ':DashboardChangeColorscheme<CR>', options)
map('n', '<Leader>ff', ':GitFiles<CR>', options)
map('n', '<Leader>fa', ':DashboardFindFile<CR>', options)
map('n', '<Leader>fw', ':DashboardFindWord<CR>', options)
map('n', '<Leader>fh', ':DashboardFindHistory<CR>', options)
map('n', '<Leader>fb', ':DashboardJumpMark<CR>', options)
map('n', '<Leader>cn', ':DashboardNewFile<CR>', options)

-- Sessions
map('n', '<Leader>ss', ':<C-u>SessionSave<CR>', options)
map('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', options)

-- LSP
map("n", "<Leader>gd", ":lua vim.lsp.buf.definition()<CR>", options)
map("n", "<Leader>k", ":lua vim.lsp.buf.hover()<CR>", options)
map("n", "<Leader>a", ":lua vim.lsp.buf.code_action()<CR>", options)

-- Moving lines
map("n", "<S-Up>", ":m -2<CR>", options)
map("n", "<S-Down>", ":m +1<CR>", options)

-- LspSaga
map('n', '<Leader>gh', ':Lspsaga lsp_finder<CR>', options)
map('n', '<Leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", options)
map('v', '<Leader>ca', ':<C-U>Lspsaga range_code_action<CR>', options)
map('n', 'K', ':Lspsaga hover_doc<CR>', options)
map('n', '<Leader>gs', ':Lspsaga signature_help<CR>', options)
map('n', '<Leader>rn', ':Lspsaga rename<CR>', options)
map('n', '<Leader>pd', ':Lspsaga preview_definition<CR>', options)

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
map('n', '<Leader>n', ':NvimTreeFindFile<CR>', options)
map('n', '<Leader>rr', ':NvimTreeRefresh<CR>', options)

-- Code completion (nvim-compe)
map("i", "<C-Space>", "compe#complete()", { expr = true })
map("i", "<CR>", "compe#confirm('<CR>')", { expr = true })

-- Terminal
map('t', 'jj', '<C-\\><C-n>', options) -- exit terminal insert mode

map("t", "<leader>tt", '<C-\\><C-n> :FloatermToggle <CR>', options) -- toggle terminal
map("n", "<Leader>tt", ":FloatermToggle <CR>", options)

map("t", "<leader>t[", '<C-\\><C-n> :FloatermPrev <CR>', options) -- switch terminals
map("t", "<leader>t]", '<C-\\><C-n> :FloatermNext <CR>', options)
map("n", "<leader>t[", ':FloatermPrev <CR>', options)
map("n", "<leader>t]", ':FloatermNext <CR>', options)

map("n", "<Leader>tn", ":FloatermNew <CR>", options) -- open new terminal
map("n", "<Leader>td", ":FloatermKill <CR>", options) -- kill terminal

-- LazyGit
local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit <CR>"
map("n", "<leader>gg", lazygit_cmd, options)

map("n", "<leader>gb", ":G blame <CR>", options)

-- Utils
map("n", "<Leader>ss", ":source %<CR>", {}) -- source current file

