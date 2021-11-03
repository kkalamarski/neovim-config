local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function() 
  use { 'glepnir/dashboard-nvim', config = require('plugins.dashboard-nvim') }

  -- Tabs
  use { 'moll/vim-bbye', config = require('plugins.vim-bbye') } 
  use { 'akinsho/nvim-bufferline.lua', config = require('plugins.nvim-bufferline') } 

  -- Navigation
  use 'justinmk/vim-sneak'
  use { 'kyazdani42/nvim-tree.lua', config = require('plugins.nvim-tree') }
  use { 'unblevable/quick-scope', config = require('plugins.quick-scope') }

  

  use 'kyazdani42/nvim-web-devicons'  
  use 'junegunn/fzf.vim'
  use 'famiu/feline.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  -- use 'mhinz/vim-startify'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  use 'tpope/vim-commentary'
  use 'nvim-lua/plenary.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use 'windwp/nvim-autopairs'
  use 'nvim-lua/plenary.nvim'
  use 'voldikss/vim-floaterm'
  use 'ryanoasis/vim-devicons'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use 'pantharshit00/vim-prisma'
  use 'editorconfig/editorconfig-vim' 
  use 'jose-elias-alvarez/null-ls.nvim' 
  use 'jose-elias-alvarez/nvim-lsp-ts-utils' 
  
  use { 'junegunn/fzf',  run = 'fzf#install()' }
  use { 'prettier/vim-prettier', run = 'npm install' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  if packer_bootstrap then
    require('packer').sync()
  end
end) 

require('plugins.settings')
