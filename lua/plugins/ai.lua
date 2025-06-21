return {
  { 'github/copilot.vim', lazy = false },
  {
    "olimorris/codecompanion.nvim",
    opts = {
      chat = {
        adapter = "openai",
      },
      inline = {
        adapter = "openai",
      },
      cmd = {
        adapter = "openai",
      },
      display = {
        action_palette = {
          width = 95,
          height = 10,
          prompt = "Prompt ",
          provider = "snacks",
          opts = {
            show_default_actions = true, -- Show the default actions in the action palette?
            show_default_prompt_library = true, -- Show the default prompt library in the action palette?
          },
        },
        chat = {
          -- Change the default icons
          icons = {
            pinned_buffer = " ",
            watched_buffer = "👀 ",
          },

          -- Alter the sizing of the debug window
          debug_window = {
            ---@return number|fun(): number
            width = vim.o.columns - 5,
            ---@return number|fun(): number
            height = vim.o.lines - 2,
          },

          -- Options to customize the UI of the chat buffer
          window = {
            layout = "vertical", -- float|vertical|horizontal|buffer
            position = "right", -- left|right|top|bottom (nil will default depending on vim.opt.splitright|vim.opt.splitbelow)
            border = "single",
            height = 0.8,
            width = 0.3,
            relative = "editor",
            full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
            opts = {
              breakindent = true,
              cursorcolumn = false,
              cursorline = false,
              foldcolumn = "0",
              linebreak = true,
              list = false,
              numberwidth = 1,
              signcolumn = "no",
              spell = false,
              wrap = true,
            },
          },

          ---Customize how tokens are displayed
          ---@param tokens number
          ---@param adapter CodeCompanion.Adapter
          ---@return string
          token_count = function(tokens, adapter)
            return " (" .. tokens .. " tokens)"
          end,
        },
      },
    },
    keys = {
      { "<leader>cc", ":CodeCompanionChat<CR>", desc = "Open Code Companion Chat" },
      { "<leader>ci", ":CodeCompanion<CR>", mode = { "v" }, desc = "Run CodeCompanionInline on selection" },
      { "<leader>cd", ":CodeCompanionCmd<CR>", desc = "Open Code Companion Command" },
      { "<leader>ca", ":CodeCompanionActions<CR>", desc = "Open Code Companion Action Palette" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
