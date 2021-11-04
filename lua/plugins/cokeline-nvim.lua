local get_hex = require('cokeline/utils').get_hex

require('cokeline').setup({

  default_hl = {
    focused = {
      fg = get_hex('ColorColumn', 'fg'),
      bg = get_hex('Search', 'bg'),
      style = 'bold'
    },
    unfocused = {
      fg = get_hex('Comment', 'fg'),
      bg = get_hex('ColorColumn', 'bg'),
    },
  },

  components = {
    {
      text = function(buffer) return ' ' .. buffer.devicon.icon end,
      hl = {
        fg = function(buffer) return buffer.devicon.color end,
      },
    },
    {
      text = function(buffer) return buffer.unique_prefix end,
      hl = {
        fg = get_hex('Comment', 'fg'),
        style = 'italic',
      },
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = function(buffer) 
        if buffer.lsp.errors > 0 then
          return ' x ' .. buffer.lsp.errors .. ' '
        end

        return ''
      end,
      hl = {
        fg = get_hex('Error', 'fg'),
      }
    },
    {
      text = ' |',
    }
  },  
})
