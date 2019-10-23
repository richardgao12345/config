syntax on
command! W w
command! Wq wq
inoremap jj <Esc>
inoremap jk <Esc>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

" Trailing white space (strip spaces)
noremap <leader>ss :call StripWhitespace()<CR>
