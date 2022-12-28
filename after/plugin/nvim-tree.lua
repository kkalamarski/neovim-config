require("nvim-tree").setup({
  view = {
    width = 40
  },
  git = {
    ignore = false,
  },
  renderer = {
    special_files = { },
  }
})

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
map('n', '<Leader>n', ':NvimTreeFindFile<CR>', options)
map('n', '<Leader>rr', ':NvimTreeRefresh<CR>', options)

