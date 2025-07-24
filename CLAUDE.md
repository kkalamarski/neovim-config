# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration using LazyVim as the base framework with Lazy.nvim as the plugin manager. The configuration is optimized for web development and includes AI tools like GitHub Copilot.

## Architecture

The configuration follows a modular structure:

- `init.lua`: Entry point that bootstraps Lazy.nvim and loads the main configuration
- `lua/kkalamarski/`: Personal configuration modules
  - `init.lua`: Loads settings, LSP, and remaps
  - `settings.lua`: Vim options and global settings
  - `lsp.lua`: Language Server Protocol configuration
  - `remaps.lua`: Custom key mappings
- `lua/plugins/`: Plugin specifications organized by functionality
  - `lazy.lua`: LazyVim base configuration with nordfox colorscheme
  - `lsp.lua`: LSP-related plugins (mason, nvim-lspconfig, trouble, treesitter)
  - `navigation.lua`: File navigation plugins (nvim-tree, telescope, harpoon, dashboard)
  - `ai.lua`: AI assistance plugins (currently GitHub Copilot)
  - Other plugin files for specific functionality
- `after/plugin/`: Plugin-specific configurations that load after plugins

## Key Configuration Details

### Plugin Management
- Uses Lazy.nvim as plugin manager
- LazyVim provides the base configuration framework
- Plugins are organized in separate files under `lua/plugins/`
- Plugin configurations are in `after/plugin/` directory

### Leader Key
The leader key is set to space (` `) in both `mapleader` and `maplocalleader`.

### Core Plugins
- **LSP**: Mason for LSP server management, nvim-lspconfig for configuration
- **Completion**: nvim-cmp with LuaSnip for snippets
- **Navigation**: nvim-tree (file explorer), telescope (fuzzy finder), harpoon (quick file switching)
- **Syntax**: nvim-treesitter for syntax highlighting and text objects
- **AI**: GitHub Copilot for code completion
- **Git**: Various git-related plugins
- **Terminal**: vim-floaterm for terminal integration

### Key Mappings (Custom)
- `<S-Up>/<S-Down>`: Move lines up/down in normal and visual mode
- `<leader>s`: Search and replace word under cursor
- `[d]/]d`: Navigate diagnostics
- `<leader>e`: Open diagnostic float
- `<leader>q`: Set diagnostic loclist
- `<leader><arrows>`: Navigate between window panes
- `<leader>vv`: Vertical split
- `<leader>hh`: Horizontal split

### Settings
- 2-space indentation
- Line numbers with relative numbering
- No line wrapping
- System clipboard integration
- Termguicolors enabled
- Nordfox colorscheme (via LazyVim)

## Development Workflow

Since this is a Neovim configuration repository, development typically involves:

1. **Testing changes**: Restart Neovim to see configuration changes
2. **Plugin management**: Use Lazy.nvim commands (`:Lazy`) to install/update plugins
3. **LSP management**: Use Mason (`:Mason`) to manage language servers
4. **Debugging**: Check `:checkhealth` for configuration issues

## File Organization

Plugin configurations should be added to appropriate files in `lua/plugins/` or create new categorized files. Personal settings and keymaps go in `lua/kkalamarski/`. Plugin-specific advanced configurations go in `after/plugin/`.