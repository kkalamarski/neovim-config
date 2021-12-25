vim.g.dashboard_default_executive ='fzf'
vim.g.dashboard_custom_footer = { 
  'https://github.com/kkalamarski/neovim-config' 
}
vim.g.dashboard_custom_header = {
 '',
 '',
 '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 '',
 '',
 '',
}

local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit"

vim.g.dashboard_custom_section = {
  a = {
    description = { "  Find File          (<leader> ff)" },
    command = ":GitFiles",
  },
  b = {
    description = { "  New File           (<leader> cn)" },
    command = ":ene!",
  },
  c = {
    description = { "  Recent Files       (<leader> fh)" },
    command = ":DashboardFindHistory",
  },
  d = {
    description = { "  LazyGit            (<leader> gg)" },
    command = lazygit_cmd,
  },
  e = {
    description = { "  Open Terminal      (<leader> tt)" },
    command = ":FloatermToggle",
  },
  f = {
    description = { "  Configuration                   " },
    command = ":e ~/.config/nvim/init.lua",
  },
  g = {
    description = { "ﲉ  Help                            " },
    command = "!open https://github.com/kkalamarski/neovim-config",
  }
}
