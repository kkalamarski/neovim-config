set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set relativenumber
syntax on
set autoindent
set softtabstop=2
set cursorline
set nowrap
set ruler
set showtabline=2
set mouse=a
set clipboard=unnamedplus
set tabstop=2 shiftwidth=2 expandtab

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
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'dyng/ctrlsf.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()

colorscheme onedark

let g:airline#extensions#tabline#enabled = 1

source ~/.config/nvim/coc.vim

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :BLines<CR>

set laststatus=2
