local servers = {
  elmls = {},
  lua_ls = {},
  ts_ls = {},
  prismals = {},
  tailwindcss = {},
  rust_analyzer = {},
  terraformls = {},
  yamlls = {}
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

-- Turn on lsp status information
require('fidget').setup()

