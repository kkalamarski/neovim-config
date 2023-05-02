vim.cmd [[autocmd FileType harpoon setlocal wrap]]


vim.keymap.set('n', '<leader>\\', function ()
  require("harpoon.mark").add_file()
end)

vim.keymap.set('n', '<leader> ', function ()
  require("harpoon.ui").toggle_quick_menu()
end)
