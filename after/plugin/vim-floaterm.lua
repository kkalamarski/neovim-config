vim.keymap.set('t', 'jj', '<C-\\><C-n>') -- exit terminal insert mode

vim.keymap.set("t", "<leader>te", '<C-\\><C-n> :FloatermToggle <CR>') -- toggle terminal
vim.keymap.set("n", "<Leader>te", ":FloatermToggle <CR>")

vim.keymap.set("t", "<leader>t[", '<C-\\><C-n> :FloatermPrev <CR>') -- switch terminals
vim.keymap.set("t", "<leader>t]", '<C-\\><C-n> :FloatermNext <CR>')
vim.keymap.set("n", "<leader>t[", ':FloatermPrev <CR>')
vim.keymap.set("n", "<leader>t]", ':FloatermNext <CR>')

vim.keymap.set("n", "<Leader>tn", ":FloatermNew <CR>") -- open new terminal
vim.keymap.set("n", "<Leader>td", ":FloatermKill <CR>") -- kill terminal

-- LazyGit
local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit <CR>"

vim.keymap.set("n", "<leader>gg", lazygit_cmd)
vim.keymap.set("n", "<leader>gb", ":G blame <CR>")
