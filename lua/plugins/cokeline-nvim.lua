local get_hex = require('cokeline/utils').get_hex
local yellow = vim.g.terminal_color_3

require('cokeline').setup({
  default_hl = {
    focused = {
      fg = get_hex('Normal', 'fg'),
      bg = 'NONE',
    },
    unfocused = {
      fg = get_hex('Comment', 'fg'),
      bg = 'NONE',
    },
  },
  rendering = {
    left_sidebar = {
      filetype = 'NvimTree',
      components = {
        {
          text = '  NvimTree',
          hl = {
            fg = yellow,
            bg = get_hex('NvimTreeNormal', 'bg'),
            style = 'bold'
          }
        },
      }
    },
  },
})
