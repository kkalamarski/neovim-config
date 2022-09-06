vim.cmd [[packadd packer.nvim]]

require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'

  -- Dashboard
  use { 'glepnir/dashboard-nvim', config = function() require('plugins.dashboard-nvim') end }

  -- Buffers & Statusline
  use 'nvim-lualine/lualine.nvim'
  use { 'moll/vim-bbye', config = function() require('plugins.vim-bbye') end }
  use { 'noib3/nvim-cokeline', requires = { 'kyazdani42/nvim-web-devicons' }, config = function() require('plugins.cokeline-nvim') end }

  -- Navigation
  use 'justinmk/vim-sneak'
  use { 'kyazdani42/nvim-tree.lua', config = function() require('plugins.nvim-tree') end }
  use { 'unblevable/quick-scope', config = function() require('plugins.quick-scope') end }

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  use 'neovim/nvim-lspconfig'
  use 'windwp/nvim-ts-autotag'
  use 'pantharshit00/vim-prisma'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Utils
  use 'github/copilot.vim'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'windwp/nvim-autopairs'
  use 'nvim-lua/plenary.nvim'
  use 'voldikss/vim-floaterm'
  use 'ryanoasis/vim-devicons'
  use 'editorconfig/editorconfig-vim'
  use { 'prettier/vim-prettier', run = 'npm install' }

  -- Themes
  use 'Mofiqul/vscode.nvim'
  use 'shaunsingh/nord.nvim'
  use 'folke/tokyonight.nvim'
  use "projekt0n/github-nvim-theme"

  -- Fuzzy Finder
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})

require('plugins.settings')
