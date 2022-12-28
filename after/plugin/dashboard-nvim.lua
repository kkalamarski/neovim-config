local db = require('dashboard')

local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit"

local header = {
 [[]],
 [[]],
 [[]],
 [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
 [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
 [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
 [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
 [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
 [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
 [[]],
 [[]],
 [[]],
}

db.custom_header = header
db.custom_center = {
  {
    icon = "  ",
    desc = "Find File                    ",
    action = require('telescope.builtin').find_files,
    shortcut = "SPC ff",
  },
  {
    icon = "  ",
    desc = "New File                     ",
    action = ":ene!",
    shortcut = "SPC cn",
  },
  {
    icon = "  ",
    desc = "Recent Files                 ",
    action = ":DashboardFindHistory",
    shortcut = "SPC ? ",
  },
  {
    icon = "  ",
    desc = "LazyGit                      ",
    action = lazygit_cmd,
    shortcut = "SPC gg",
  },
  {
    icon = "  ",
    desc = "Open Terminal                ",
    action = ":FloatermToggle",
    shortcut = "SPC tt",
  },
  {
    icon = "  ",
    desc = "Configuration                ",
    action = ":e ~/.config/nvim/init.lua",
    shortcut = "      "
  },
  {
    icon = "ﲉ  ",
    desc = "Help                         ",
    action = "!open https://github.com/kkalamarski/neovim-config",
    shortcut = "      "
  }
}

db.custom_footer = {
  [[]],
  [[]],
  'https://github.com/kkalamarski/neovim-config'
}
