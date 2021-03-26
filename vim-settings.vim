set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let loaded_netrwPlugin = 1

syntax on

set laststatus=2
set nocompatible
set relativenumber
set smarttab 
set iskeyword+=-
set autoindent
set softtabstop=2
set cursorline
set nowrap
set ruler
set showtabline=2
set mouse=a
set clipboard=unnamedplus
set tabstop=2 shiftwidth=2 expandtab

let g:airline#extensions#tabline#enabled = 1
