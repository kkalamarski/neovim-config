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

source $HOM~/.config/nvim/coc.vim
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/plug-config/quickscope.vim

colorscheme onedark

let g:airline#extensions#tabline#enabled = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :BLines<CR>

set laststatus=2
