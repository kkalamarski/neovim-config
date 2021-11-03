require'bufferline'.setup{
  options = {
    view = "default",
    numbers = "none",
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 30,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 30,
    diagnostics = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    separator_style = "thick",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    sort_by = 'extension'
  }
}

