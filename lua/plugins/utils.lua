return {
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
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
    },
  },
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
  {
    "HakonHarnes/img-clip.nvim",
    opts = {
      filetypes = {
        codecompanion = {
          prompt_for_file_name = false,
          template = "[Image]($FILE_PATH)",
          use_absolute_path = true,
        },
      },
    },
  },
}
