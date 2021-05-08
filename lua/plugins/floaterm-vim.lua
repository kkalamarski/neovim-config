local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit <CR>"

vim.api.nvim_set_keymap("n", "<leader>gg", lazygit_cmd, {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tt", ":FloatermToggle <CR>", { noremap = true, silent = true })
