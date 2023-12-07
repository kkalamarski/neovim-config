local plugins = {
  { "folke/neodev.nvim", opts = {} },

  { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp" } },

  -- Terminal
  'voldikss/vim-floaterm',

  -- Navigation
  'kyazdani42/nvim-tree.lua',
  { 'nvimdev/dashboard-nvim', event = 'VimEnter' },
  { 'ThePrimeagen/harpoon', lazy = false },

  -- AI
  { 'github/copilot.vim', lazy = false },

  -- Visuals
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = true,
      },
    },
    lazy = false
  },
  { 'ryanoasis/vim-devicons', lazy = false },
  { 'nvim-lualine/lualine.nvim', lazy = false },
  'nvim-tree/nvim-web-devicons',

  -- Utils
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'tpope/vim-surround',
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
  'windwp/nvim-autopairs',
  'editorconfig/editorconfig-vim',
  { 'prettier/vim-prettier', run = 'npm install' },
  { "williamboman/mason.nvim", lazy = false },
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = {
      -- options
    },
  },

  -- Tests
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      'marilari88/neotest-vitest',
      'haydenmeade/neotest-jest'
    }
  },

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'lewis6991/gitsigns.nvim',

  -- LSP
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons"
  },

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 },

  -- configure LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  }
}

require("lazy").setup(plugins)
