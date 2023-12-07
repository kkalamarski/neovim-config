require("neotest").setup({
  adapters = {
    require("neotest-jest")({
      jestConfigFile = function()
        local file = vim.fn.expand('%:p')
        if string.find(file, "monorepo") then
          return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
        end

        return vim.fn.getcwd() .. "/jest.config.ts"
      end,
    }),
    -- require("neotest-vitest")({}),
  },
})

vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua require('neotest').run.run()<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>ta", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<cr>", {})

vim.api.nvim_set_keymap("n", "<leader>tw", "<cmd>lua require('neotest').watch.watch(vim.fn.expand('%'))<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>ts", "<cmd>lua require('neotest').summary.open()<cr>", {})
