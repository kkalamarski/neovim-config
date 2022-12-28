-- Moving lines
vim.keymap.set("n", "<S-Up>", ":m -2<CR>")
vim.keymap.set("n", "<S-Down>", ":m +1<CR>")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")

-- Instant search/replace on the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Moving between panes
vim.keymap.set('n', '<leader><Up>', ':wincmd k<CR>')
vim.keymap.set('n', '<leader><Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<leader><Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<leader><Right>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')
