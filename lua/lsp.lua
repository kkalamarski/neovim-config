local nvim_lsp = require("lspconfig")
local opts = { silent = true }

-- Elm LSP
require'lspconfig'.elmls.setup{
  on_attach = function(client, bufnr)
    -- enable elm-format on save
    vim.api.nvim_buf_set_option(bufnr, 'modified', false)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "fmt", ":!elm-format % --yes<CR>:w<CR>", opts)
  end
}

require'lspconfig'.rust_analyzer.setup{}

-- Typescript LSP
nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        -- defaults
        ts_utils.setup {
            debug = false,
            disable_commands = false,
            enable_import_on_completion = false,

            -- import all
            import_all_timeout = 5000, -- ms
            import_all_priorities = {
                buffers = 4, -- loaded buffer names
                buffer_content = 3, -- loaded buffer content
                local_files = 2, -- git files or files with relative path markers
                same_file = 1, -- add to existing import statement
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,

            -- eslint
            eslint_enable_code_actions = true,
            eslint_enable_disable_comments = true,
            eslint_bin = "eslint",
            eslint_config_fallback = nil,
            eslint_enable_diagnostics = false,
            eslint_show_rule_id = false,

            -- formatting
            enable_formatting = true,
            formatter = "prettier",
            formatter_config_fallback = nil,

            -- update imports on file move
            update_imports_on_move = false,
            require_confirmation_on_move = false,
            watch_dir = nil,

            -- filter diagnostics
            filter_out_diagnostics_by_severity = {},
            filter_out_diagnostics_by_code = {},
        }

        -- required to fix code action ranges and filter diagnostics
        ts_utils.setup_client(client)

        -- no default maps, so you may want to define some here
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)

        -- define an alias
        vim.cmd("command -buffer Formatting lua vim.lsp.buf.formatting()")
        vim.cmd("command -buffer FormattingSync lua vim.lsp.buf.formatting_sync()")

        -- format on save
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")

        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end
}

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
