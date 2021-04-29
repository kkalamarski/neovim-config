set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

packloadall

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'unblevable/quick-scope'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'famiu/feline.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'justinmk/vim-sneak'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'folke/lsp-trouble.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

