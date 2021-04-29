require"toggleterm".setup{
  size = 10,
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = false,
  persist_size = true,
  direction = 'horizontal',
  shell = vim.o.shell -- change the default shell 
}
