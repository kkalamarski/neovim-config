# kkalamarski's neovim config

An opinionated nvim configuration built on LazyVim framework that I use in my everyday work. Best suited for web development with AI assistance.

## Architecture

This configuration uses:
- **LazyVim** as the base framework
- **Lazy.nvim** as the plugin manager
- **Nordfox** colorscheme
- Modular structure for easy maintenance

## Key Plugins

For complete list see the `lua/plugins/` directory.

### Core
- [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim) - Base configuration framework
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager

### LSP & Development
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - LSP server manager
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim) - Diagnostics

### Navigation
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - File explorer
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) - Quick file switching
- [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) - Start screen

### AI & Productivity
- [github/copilot.vim](https://github.com/github/copilot.vim) - AI code completion
- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm) - Terminal integration

## Key Bindings

By default `<leader>` is mapped to ` ` (space).

| Key Mapping | Description |
|-------------|-------------|
| `<leader>ff` | Find files |
| `<leader>fw` | Live grep (search in files) |
| `<leader>?` | Recently opened files |
| `<leader>b` | Open buffers |
| `<leader>/` | Search in current buffer |
| `<leader>e` | Open diagnostic float |
| `<leader>s` | Search/replace word under cursor |
| `<S-Up>/<S-Down>` | Move lines up/down |
| `<leader><arrows>` | Navigate between panes |
| `<leader>vv` | Vertical split |
| `<leader>hh` | Horizontal split |
| `[d]/]d` | Navigate diagnostics |

## Installation

1. Backup your existing config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone this config:
   ```bash
   git clone https://github.com/kkalamarski/neovim-config ~/.config/nvim
   ```

3. Start Neovim - plugins will install automatically:
   ```bash
   nvim
   ```

## Structure

```
├── init.lua                 # Entry point
├── lua/
│   ├── kkalamarski/        # Personal configuration
│   │   ├── init.lua        # Loads settings, LSP, remaps
│   │   ├── settings.lua    # Vim options
│   │   ├── lsp.lua         # LSP configuration
│   │   └── remaps.lua      # Custom keymaps
│   └── plugins/            # Plugin specifications
│       ├── lazy.lua        # LazyVim base config
│       ├── lsp.lua         # LSP plugins
│       ├── navigation.lua  # Navigation plugins
│       ├── ai.lua          # AI plugins
│       └── ...
└── after/plugin/           # Plugin-specific configs
```