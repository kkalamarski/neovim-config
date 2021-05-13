local map = vim.api.nvim_set_keymap
local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit <CR>"

-- toggle terminal
map("t", "<leader>tt", '<C-\\><C-n> :FloatermToggle <CR>', {noremap = true, silent = true})
map("n", "<Leader>tt", ":FloatermToggle <CR>", { noremap = true, silent = true })

-- switch terminals
map("t", "<leader>t[", '<C-\\><C-n> :FloatermPrev <CR>', {noremap = true, silent = true})
map("t", "<leader>t]", '<C-\\><C-n> :FloatermNext <CR>', {noremap = true, silent = true})

map("n", "<leader>t[", ':FloatermPrev <CR>', {noremap = true, silent = true})
map("n", "<leader>t]", ':FloatermNext <CR>', {noremap = true, silent = true})

-- lazygit
map("n", "<leader>gg", lazygit_cmd, {noremap = true, silent = true})

-- new terminal
map("n", "<Leader>tn", ":FloatermNew <CR>", { noremap = true, silent = true })

-- kill terminal
map("n", "<Leader>td", ":FloatermKill <CR>", { noremap = true, silent = true })

