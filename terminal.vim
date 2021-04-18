tnoremap jj <C-\><C-n>

tnoremap <Leader>c <C-\><C-n>:tab new<CR>:term<CR>
noremap <Leader>c :tab new<CR>:term<CR>
inoremap <Leader>c <Esc>:tab new<CR>:term<CR>

" Quickly create a new terminal in a vertical split
tnoremap <silent><Leader>% <C-\><C-n>:vsp<CR><C-w><C-w>:term<CR>:vertical resize 50<CR>
noremap <Leader>% :vsp<CR><C-w><C-w>:term<CR>:vertical resize 50<CR>
inoremap <Leader>% <Esc>:vsp<CR><C-w><C-w>:term<CR>:vertical resize 50<CR>

" Quickly create a new terminal in a horizontal split
tnoremap <Leader>" <C-\><C-n>:sp<CR><C-w><C-w>:term<CR>
noremap <Leader>" :sp<CR><C-w><C-w>:term<CR>
inoremap <Leader>" <Esc>:sp<CR><C-w><C-w>:term<CR>
