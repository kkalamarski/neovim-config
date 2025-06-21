return {
  'kyazdani42/nvim-tree.lua',
  { 'nvimdev/dashboard-nvim', event = 'VimEnter' },
  { 'ThePrimeagen/harpoon', lazy = false },
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 },
}
